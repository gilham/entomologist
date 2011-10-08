#include "BugzillaDetails.h"
#include "ui_BugzillaDetails.h"

BugzillaDetails::BugzillaDetails(QWidget *parent) :
    BackendDetails(parent),
    ui(new Ui::BugzillaDetails)
{
    ui->setupUi(this);
    ui->priorityCombo->installEventFilter(parent);
    ui->severityCombo->installEventFilter(parent);
    ui->statusCombo->installEventFilter(parent);
    ui->resolutionCombo->installEventFilter(parent);
}

BugzillaDetails::~BugzillaDetails()
{
    delete ui;
}

QMap<QString, QString>
BugzillaDetails::fieldDetails()
{
    QMap<QString, QString> newMap;
    if (mSeverity != ui->severityCombo->currentText())
        newMap["severity"] = ui->severityCombo->currentText();

    if (mPriority != ui->priorityCombo->currentText())
        newMap["priority"] = ui->priorityCombo->currentText();

    if (mStatus != ui->statusCombo->currentText())
        newMap["status"] = ui->statusCombo->currentText();

    if (mResolution != ui->resolutionCombo->currentText())
        newMap["resolution"] = ui->resolutionCombo->currentText();

    return newMap;
}

void
BugzillaDetails::setSeverities(const QString &selected, QStringList severities)
{
    mSeverity = selected;
    ui->severityCombo->addItems(severities);
    ui->severityCombo->setCurrentIndex(ui->severityCombo->findText(selected));
}

void
BugzillaDetails::setResolutions(const QString &selected, QStringList resolutions)
{
    mResolution = selected;
    ui->resolutionCombo->addItems(resolutions);
    ui->resolutionCombo->setCurrentIndex(ui->resolutionCombo->findText(selected));
}

void
BugzillaDetails::setPriorities(const QString &selected, QStringList priorities)
{
    mPriority = selected;
    ui->priorityCombo->addItems(priorities);
    ui->priorityCombo->setCurrentIndex(ui->priorityCombo->findText(selected));

}

void
BugzillaDetails::setStatuses(const QString &selected, QStringList statuses)
{
    mStatus = selected;
    ui->statusCombo->addItems(statuses);
    ui->statusCombo->setCurrentIndex(ui->statusCombo->findText(selected));

}

void
BugzillaDetails::setProduct(const QString &selected)
{
    ui->productText->setText(selected);
}

void
BugzillaDetails::setComponent(const QString &selected)
{
    ui->componentText->setText(selected);
}