/*
 *  Copyright (c) 2011 Novell, Inc.
 *  All Rights Reserved.
 *
 *  This program is free software; you can redistribute it and/or
 *  modify it under the terms of version 2 of the GNU General Public License as
 *  published by the Free Software Foundation.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.   See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, contact Novell, Inc.
 *
 *  To contact Novell about this file by physical or electronic mail,
 *  you may find current contact information at www.novell.com
 *
 *  Author: Matt Barringer <mbarringer@suse.de>
 *
 */

#include <QNetworkAccessManager>
#include <QNetworkRequest>
#include <QNetworkCookieJar>

#include "libmaia/maiaXmlRpcClient.h"
#include "trackers/NovellBugzilla.h"
//#include "trackers/Launchpad.h"
//#include "trackers/Google.h"
#include "trackers/Mantis.h"
#include "Autodetector.h"

Autodetector::Autodetector()
    : QObject()
{
    novellBugzilla = NULL;
    genericBugzilla = NULL;
    mantis = NULL;
}

void
Autodetector::detect(QMap<QString, QString> data)
{
    qDebug() << "Detecting...";
    mData = data;
    QString temp = mData["url"];

    if (!temp.startsWith("http://") &&
        !temp.startsWith("https://"))
    {
        temp = temp.prepend("https://");
    }
    mData["url"]  = temp;
    mUrl = QUrl(temp);
    if (mUrl.host().toLower() == "bugzilla.novell.com")
    {
        mDetectionState = NOVELL_CHECK;
        novellBugzilla = new NovellBugzilla(temp);
        checkVersion(novellBugzilla);
    }
    else if (mUrl.host().toLower() == "code.google.com")
    {
        mData["type"] = "Google";
        emit finishedDetecting(mData);
    }
    else if (mUrl.host().toLower().endsWith("launchpad.net"))
    {
        mData["type"] = "Launchpad";
        emit finishedDetecting(mData);
    }
    else
    {
        mDetectionState = BUGZILLA_CHECK;
        genericBugzilla = new Bugzilla(temp);
        checkVersion(genericBugzilla);
    }

}

void
Autodetector::checkVersion(Backend *b)
{
    qDebug() << "Check version";
    connect(b, SIGNAL(versionChecked(QString)),
            this, SLOT(versionChecked(QString)));
    connect(b, SIGNAL(severitiesFound(QStringList)),
            this, SLOT(severitiesFound(QStringList)));
    connect(b, SIGNAL(prioritiesFound(QStringList)),
            this, SLOT(prioritiesFound(QStringList)));
    connect(b, SIGNAL(statusesFound(QStringList)),
            this, SLOT(statusesFound(QStringList)));
    b->checkVersion();
}

void
Autodetector::versionChecked(QString version)
{
    if (version == "-1")
    {
        mData["type"] = "Unknown";
        if (mDetectionState == BUGZILLA_CHECK)
        {
            delete genericBugzilla;
            genericBugzilla = NULL;
            qDebug() << "Checking mantis";
            mDetectionState = MANTIS_CHECK;
            mantis = new Mantis(mData["url"]);
            checkVersion(mantis);
            return;
        }
        else if (mDetectionState == MANTIS_CHECK)
        {
            qDebug() << "Mantis said no, too";
            delete mantis;
            mantis = NULL;
        }

        qDebug() << "Done detecting";
        emit finishedDetecting(mData);
        return;
    }

    mData["version"] = version;
    if (mDetectionState == NOVELL_CHECK)
    {
        mData["type"] = "NovellBugzilla";
    }
    else if (mDetectionState == BUGZILLA_CHECK)
    {
        mData["type"] = "Bugzilla";
    }
    else if (mDetectionState == MANTIS_CHECK)
    {
        mData["type"] = "Mantis";
        mantis->setUsername(mData["username"]);
        mantis->setPassword(mData["password"]);
    }

    getValidValues();
}

void
Autodetector::prioritiesFound(QStringList priorities)
{
    if (priorities.size() > 0)
        mData["valid_priorities"] = priorities.join(",");

    if (novellBugzilla != NULL)
        novellBugzilla->checkValidStatuses();
    else if (genericBugzilla != NULL)
        genericBugzilla->checkValidStatuses();
    else if (mantis != NULL)
        mantis->checkValidStatuses();
}

void
Autodetector::statusesFound(QStringList statuses)
{
    if (statuses.size() > 0)
        mData["valid_statuses"] = statuses.join(",");

    if (novellBugzilla != NULL)
        novellBugzilla->checkValidSeverities();
    else if (genericBugzilla != NULL)
        genericBugzilla->checkValidSeverities();
    else if (mantis != NULL)
        mantis->checkValidSeverities();

}

void
Autodetector::severitiesFound(QStringList severities)
{
    if (severities.size() > 0)
        mData["valid_severities"] = severities.join(",");

    if (novellBugzilla != NULL)
        novellBugzilla->deleteLater();
    else if (genericBugzilla != NULL)
        genericBugzilla->deleteLater();
    else if (mantis != NULL)
        mantis->deleteLater();

    emit finishedDetecting(mData);
}

void
Autodetector::getValidValues()
{
    if (novellBugzilla != NULL)
        novellBugzilla->checkValidPriorities();
    else if (genericBugzilla != NULL)
        genericBugzilla->checkValidPriorities();
    else if (mantis != NULL)
        mantis->checkValidPriorities();

}
