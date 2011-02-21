#############################################################################
# Makefile for building: entomologist
# Generated by qmake (2.01a) (Qt 4.7.1) on: Mon Feb 21 15:12:51 2011
# Project:  Entomologist.pro
# Template: app
# Command: /usr/bin/qmake -o Makefile Entomologist.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DAPP_VERSION=\"0.2\" -DQT_NO_DEBUG -DQT_SQL_LIB -DQT_XML_LIB -DQT_GUI_LIB -DQT_NETWORK_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -m64 -pipe -O2 -fmessage-length=0 -O2 -Wall -D_FORTIFY_SOURCE=2 -fstack-protector -funwind-tables -fasynchronous-unwind-tables -g -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -m64 -pipe -O2 -fmessage-length=0 -O2 -Wall -D_FORTIFY_SOURCE=2 -fstack-protector -funwind-tables -fasynchronous-unwind-tables -g -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I/usr/share/qt4/mkspecs/default -I. -I/usr/include/QtCore -I/usr/include/QtNetwork -I/usr/include/QtGui -I/usr/include/QtXml -I/usr/include/QtSql -I/usr/include -I. -I.
LINK          = g++
LFLAGS        = -m64 -Wl,-O1
LIBS          = $(SUBLIBS)  -L/usr/lib64 -lQtSql -L/usr/lib64 -lQtXml -lQtGui -L/usr/X11R6/lib64 -lQtNetwork -lQtCore -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = main.cpp \
		MainWindow.cpp \
		libmaia/maiaXmlRpcServerConnection.cpp \
		libmaia/maiaXmlRpcServer.cpp \
		libmaia/maiaXmlRpcClient.cpp \
		libmaia/maiaObject.cpp \
		libmaia/maiaFault.cpp \
		Backend.cpp \
		Bugzilla.cpp \
		NewTracker.cpp \
		NovellBugzilla.cpp \
		Autodetector.cpp \
		SqlBugModel.cpp \
		SqlBugDelegate.cpp \
		CommentFrame.cpp \
		UploadDialog.cpp \
		Preferences.cpp \
		About.cpp \
		SqlWriterThread.cpp \
		SqlWriter.cpp \
		PlaceholderLineEdit.cpp moc_MainWindow.cpp \
		moc_maiaXmlRpcServerConnection.cpp \
		moc_maiaXmlRpcServer.cpp \
		moc_maiaXmlRpcClient.cpp \
		moc_maiaObject.cpp \
		moc_maiaFault.cpp \
		moc_Backend.cpp \
		moc_Bugzilla.cpp \
		moc_NewTracker.cpp \
		moc_NovellBugzilla.cpp \
		moc_Autodetector.cpp \
		moc_SqlBugModel.cpp \
		moc_SqlBugDelegate.cpp \
		moc_CommentFrame.cpp \
		moc_UploadDialog.cpp \
		moc_Preferences.cpp \
		moc_About.cpp \
		moc_SqlWriterThread.cpp \
		moc_SqlWriter.cpp \
		moc_PlaceholderLineEdit.cpp \
		qrc_resources.cpp
OBJECTS       = main.o \
		MainWindow.o \
		maiaXmlRpcServerConnection.o \
		maiaXmlRpcServer.o \
		maiaXmlRpcClient.o \
		maiaObject.o \
		maiaFault.o \
		Backend.o \
		Bugzilla.o \
		NewTracker.o \
		NovellBugzilla.o \
		Autodetector.o \
		SqlBugModel.o \
		SqlBugDelegate.o \
		CommentFrame.o \
		UploadDialog.o \
		Preferences.o \
		About.o \
		SqlWriterThread.o \
		SqlWriter.o \
		PlaceholderLineEdit.o \
		moc_MainWindow.o \
		moc_maiaXmlRpcServerConnection.o \
		moc_maiaXmlRpcServer.o \
		moc_maiaXmlRpcClient.o \
		moc_maiaObject.o \
		moc_maiaFault.o \
		moc_Backend.o \
		moc_Bugzilla.o \
		moc_NewTracker.o \
		moc_NovellBugzilla.o \
		moc_Autodetector.o \
		moc_SqlBugModel.o \
		moc_SqlBugDelegate.o \
		moc_CommentFrame.o \
		moc_UploadDialog.o \
		moc_Preferences.o \
		moc_About.o \
		moc_SqlWriterThread.o \
		moc_SqlWriter.o \
		moc_PlaceholderLineEdit.o \
		qrc_resources.o
DIST          = /usr/share/qt4/mkspecs/common/g++.conf \
		/usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/modules/qt_webkit_version.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/release.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		Entomologist.pro
QMAKE_TARGET  = entomologist
DESTDIR       = 
TARGET        = entomologist

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET): ui_MainWindow.h ui_NewTracker.h ui_CommentFrame.h ui_UploadDialog.h ui_Preferences.h ui_About.h $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: Entomologist.pro  /usr/share/qt4/mkspecs/default/qmake.conf /usr/share/qt4/mkspecs/common/g++.conf \
		/usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/modules/qt_webkit_version.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/release.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		/usr/lib64/libQtSql.prl \
		/usr/lib64/libQtCore.prl \
		/usr/lib64/libQtXml.prl \
		/usr/lib64/libQtGui.prl \
		/usr/lib64/libQtNetwork.prl
	$(QMAKE) -o Makefile Entomologist.pro
/usr/share/qt4/mkspecs/common/g++.conf:
/usr/share/qt4/mkspecs/common/unix.conf:
/usr/share/qt4/mkspecs/common/linux.conf:
/usr/share/qt4/mkspecs/qconfig.pri:
/usr/share/qt4/mkspecs/modules/qt_webkit_version.pri:
/usr/share/qt4/mkspecs/features/qt_functions.prf:
/usr/share/qt4/mkspecs/features/qt_config.prf:
/usr/share/qt4/mkspecs/features/exclusive_builds.prf:
/usr/share/qt4/mkspecs/features/default_pre.prf:
/usr/share/qt4/mkspecs/features/release.prf:
/usr/share/qt4/mkspecs/features/default_post.prf:
/usr/share/qt4/mkspecs/features/warn_on.prf:
/usr/share/qt4/mkspecs/features/qt.prf:
/usr/share/qt4/mkspecs/features/unix/thread.prf:
/usr/share/qt4/mkspecs/features/moc.prf:
/usr/share/qt4/mkspecs/features/resources.prf:
/usr/share/qt4/mkspecs/features/uic.prf:
/usr/share/qt4/mkspecs/features/yacc.prf:
/usr/share/qt4/mkspecs/features/lex.prf:
/usr/share/qt4/mkspecs/features/include_source_dir.prf:
/usr/lib64/libQtSql.prl:
/usr/lib64/libQtCore.prl:
/usr/lib64/libQtXml.prl:
/usr/lib64/libQtGui.prl:
/usr/lib64/libQtNetwork.prl:
qmake:  FORCE
	@$(QMAKE) -o Makefile Entomologist.pro

dist: 
	@$(CHK_DIR_EXISTS) .tmp/entomologist0.2 || $(MKDIR) .tmp/entomologist0.2 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/entomologist0.2/ && $(COPY_FILE) --parents MainWindow.h libmaia/maiaXmlRpcServerConnection.h libmaia/maiaXmlRpcServer.h libmaia/maiaXmlRpcClient.h libmaia/maiaObject.h libmaia/maiaFault.h Backend.h Bugzilla.h NewTracker.h NovellBugzilla.h Autodetector.h SqlBugModel.h SqlBugDelegate.h CommentFrame.h UploadDialog.h Preferences.h About.h SqlWriterThread.h SqlWriter.h PlaceholderLineEdit.h .tmp/entomologist0.2/ && $(COPY_FILE) --parents resources.qrc .tmp/entomologist0.2/ && $(COPY_FILE) --parents main.cpp MainWindow.cpp libmaia/maiaXmlRpcServerConnection.cpp libmaia/maiaXmlRpcServer.cpp libmaia/maiaXmlRpcClient.cpp libmaia/maiaObject.cpp libmaia/maiaFault.cpp Backend.cpp Bugzilla.cpp NewTracker.cpp NovellBugzilla.cpp Autodetector.cpp SqlBugModel.cpp SqlBugDelegate.cpp CommentFrame.cpp UploadDialog.cpp Preferences.cpp About.cpp SqlWriterThread.cpp SqlWriter.cpp PlaceholderLineEdit.cpp .tmp/entomologist0.2/ && $(COPY_FILE) --parents MainWindow.ui NewTracker.ui CommentFrame.ui UploadDialog.ui Preferences.ui About.ui .tmp/entomologist0.2/ && $(COPY_FILE) --parents entomologist_en.ts .tmp/entomologist0.2/ && (cd `dirname .tmp/entomologist0.2` && $(TAR) entomologist0.2.tar entomologist0.2 && $(COMPRESS) entomologist0.2.tar) && $(MOVE) `dirname .tmp/entomologist0.2`/entomologist0.2.tar.gz . && $(DEL_FILE) -r .tmp/entomologist0.2


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: moc_MainWindow.cpp moc_maiaXmlRpcServerConnection.cpp moc_maiaXmlRpcServer.cpp moc_maiaXmlRpcClient.cpp moc_maiaObject.cpp moc_maiaFault.cpp moc_Backend.cpp moc_Bugzilla.cpp moc_NewTracker.cpp moc_NovellBugzilla.cpp moc_Autodetector.cpp moc_SqlBugModel.cpp moc_SqlBugDelegate.cpp moc_CommentFrame.cpp moc_UploadDialog.cpp moc_Preferences.cpp moc_About.cpp moc_SqlWriterThread.cpp moc_SqlWriter.cpp moc_PlaceholderLineEdit.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_MainWindow.cpp moc_maiaXmlRpcServerConnection.cpp moc_maiaXmlRpcServer.cpp moc_maiaXmlRpcClient.cpp moc_maiaObject.cpp moc_maiaFault.cpp moc_Backend.cpp moc_Bugzilla.cpp moc_NewTracker.cpp moc_NovellBugzilla.cpp moc_Autodetector.cpp moc_SqlBugModel.cpp moc_SqlBugDelegate.cpp moc_CommentFrame.cpp moc_UploadDialog.cpp moc_Preferences.cpp moc_About.cpp moc_SqlWriterThread.cpp moc_SqlWriter.cpp moc_PlaceholderLineEdit.cpp
moc_MainWindow.cpp: MainWindow.h
	/usr/bin/moc $(DEFINES) $(INCPATH) MainWindow.h -o moc_MainWindow.cpp

moc_maiaXmlRpcServerConnection.cpp: libmaia/maiaFault.h \
		libmaia/maiaXmlRpcServerConnection.h
	/usr/bin/moc $(DEFINES) $(INCPATH) libmaia/maiaXmlRpcServerConnection.h -o moc_maiaXmlRpcServerConnection.cpp

moc_maiaXmlRpcServer.cpp: libmaia/maiaObject.h \
		libmaia/maiaXmlRpcServerConnection.h \
		libmaia/maiaFault.h \
		libmaia/maiaXmlRpcServer.h
	/usr/bin/moc $(DEFINES) $(INCPATH) libmaia/maiaXmlRpcServer.h -o moc_maiaXmlRpcServer.cpp

moc_maiaXmlRpcClient.cpp: libmaia/maiaObject.h \
		libmaia/maiaXmlRpcClient.h
	/usr/bin/moc $(DEFINES) $(INCPATH) libmaia/maiaXmlRpcClient.h -o moc_maiaXmlRpcClient.cpp

moc_maiaObject.cpp: libmaia/maiaObject.h
	/usr/bin/moc $(DEFINES) $(INCPATH) libmaia/maiaObject.h -o moc_maiaObject.cpp

moc_maiaFault.cpp: libmaia/maiaFault.h
	/usr/bin/moc $(DEFINES) $(INCPATH) libmaia/maiaFault.h -o moc_maiaFault.cpp

moc_Backend.cpp: SqlWriterThread.h \
		Backend.h
	/usr/bin/moc $(DEFINES) $(INCPATH) Backend.h -o moc_Backend.cpp

moc_Bugzilla.cpp: Backend.h \
		SqlWriterThread.h \
		libmaia/maiaXmlRpcClient.h \
		libmaia/maiaObject.h \
		Bugzilla.h
	/usr/bin/moc $(DEFINES) $(INCPATH) Bugzilla.h -o moc_Bugzilla.cpp

moc_NewTracker.cpp: NewTracker.h
	/usr/bin/moc $(DEFINES) $(INCPATH) NewTracker.h -o moc_NewTracker.cpp

moc_NovellBugzilla.cpp: Bugzilla.h \
		Backend.h \
		SqlWriterThread.h \
		libmaia/maiaXmlRpcClient.h \
		libmaia/maiaObject.h \
		NovellBugzilla.h
	/usr/bin/moc $(DEFINES) $(INCPATH) NovellBugzilla.h -o moc_NovellBugzilla.cpp

moc_Autodetector.cpp: Autodetector.h
	/usr/bin/moc $(DEFINES) $(INCPATH) Autodetector.h -o moc_Autodetector.cpp

moc_SqlBugModel.cpp: SqlBugModel.h
	/usr/bin/moc $(DEFINES) $(INCPATH) SqlBugModel.h -o moc_SqlBugModel.cpp

moc_SqlBugDelegate.cpp: SqlBugDelegate.h
	/usr/bin/moc $(DEFINES) $(INCPATH) SqlBugDelegate.h -o moc_SqlBugDelegate.cpp

moc_CommentFrame.cpp: CommentFrame.h
	/usr/bin/moc $(DEFINES) $(INCPATH) CommentFrame.h -o moc_CommentFrame.cpp

moc_UploadDialog.cpp: UploadDialog.h
	/usr/bin/moc $(DEFINES) $(INCPATH) UploadDialog.h -o moc_UploadDialog.cpp

moc_Preferences.cpp: Preferences.h
	/usr/bin/moc $(DEFINES) $(INCPATH) Preferences.h -o moc_Preferences.cpp

moc_About.cpp: About.h
	/usr/bin/moc $(DEFINES) $(INCPATH) About.h -o moc_About.cpp

moc_SqlWriterThread.cpp: SqlWriterThread.h
	/usr/bin/moc $(DEFINES) $(INCPATH) SqlWriterThread.h -o moc_SqlWriterThread.cpp

moc_SqlWriter.cpp: SqlWriter.h
	/usr/bin/moc $(DEFINES) $(INCPATH) SqlWriter.h -o moc_SqlWriter.cpp

moc_PlaceholderLineEdit.cpp: PlaceholderLineEdit.h
	/usr/bin/moc $(DEFINES) $(INCPATH) PlaceholderLineEdit.h -o moc_PlaceholderLineEdit.cpp

compiler_rcc_make_all: qrc_resources.cpp
compiler_rcc_clean:
	-$(DEL_FILE) qrc_resources.cpp
qrc_resources.cpp: resources.qrc \
		graphics/arrow_up.png \
		graphics/spinner-big.gif \
		graphics/accept.png \
		graphics/changelog.png \
		graphics/search.png \
		graphics/entomologist-32.png \
		graphics/stop.png \
		graphics/arrow_refresh.png \
		graphics/bug.png
	/usr/bin/rcc -name resources resources.qrc -o qrc_resources.cpp

compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all: ui_MainWindow.h ui_NewTracker.h ui_CommentFrame.h ui_UploadDialog.h ui_Preferences.h ui_About.h
compiler_uic_clean:
	-$(DEL_FILE) ui_MainWindow.h ui_NewTracker.h ui_CommentFrame.h ui_UploadDialog.h ui_Preferences.h ui_About.h
ui_MainWindow.h: MainWindow.ui \
		PlaceholderLineEdit.h
	/usr/bin/uic MainWindow.ui -o ui_MainWindow.h

ui_NewTracker.h: NewTracker.ui \
		PlaceholderLineEdit.h
	/usr/bin/uic NewTracker.ui -o ui_NewTracker.h

ui_CommentFrame.h: CommentFrame.ui
	/usr/bin/uic CommentFrame.ui -o ui_CommentFrame.h

ui_UploadDialog.h: UploadDialog.ui
	/usr/bin/uic UploadDialog.ui -o ui_UploadDialog.h

ui_Preferences.h: Preferences.ui
	/usr/bin/uic Preferences.ui -o ui_Preferences.h

ui_About.h: About.ui
	/usr/bin/uic About.ui -o ui_About.h

compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_rcc_clean compiler_uic_clean 

####### Compile

main.o: main.cpp MainWindow.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cpp

MainWindow.o: MainWindow.cpp About.h \
		Preferences.h \
		UploadDialog.h \
		CommentFrame.h \
		SqlBugDelegate.h \
		SqlBugModel.h \
		Bugzilla.h \
		Backend.h \
		SqlWriterThread.h \
		libmaia/maiaXmlRpcClient.h \
		libmaia/maiaObject.h \
		NovellBugzilla.h \
		NewTracker.h \
		MainWindow.h \
		Autodetector.h \
		ui_MainWindow.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o MainWindow.o MainWindow.cpp

maiaXmlRpcServerConnection.o: libmaia/maiaXmlRpcServerConnection.cpp libmaia/maiaXmlRpcServerConnection.h \
		libmaia/maiaFault.h \
		libmaia/maiaXmlRpcServer.h \
		libmaia/maiaObject.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o maiaXmlRpcServerConnection.o libmaia/maiaXmlRpcServerConnection.cpp

maiaXmlRpcServer.o: libmaia/maiaXmlRpcServer.cpp libmaia/maiaXmlRpcServer.h \
		libmaia/maiaObject.h \
		libmaia/maiaXmlRpcServerConnection.h \
		libmaia/maiaFault.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o maiaXmlRpcServer.o libmaia/maiaXmlRpcServer.cpp

maiaXmlRpcClient.o: libmaia/maiaXmlRpcClient.cpp libmaia/maiaXmlRpcClient.h \
		libmaia/maiaObject.h \
		libmaia/maiaFault.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o maiaXmlRpcClient.o libmaia/maiaXmlRpcClient.cpp

maiaObject.o: libmaia/maiaObject.cpp libmaia/maiaObject.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o maiaObject.o libmaia/maiaObject.cpp

maiaFault.o: libmaia/maiaFault.cpp libmaia/maiaFault.h \
		libmaia/maiaObject.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o maiaFault.o libmaia/maiaFault.cpp

Backend.o: Backend.cpp Backend.h \
		SqlWriterThread.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o Backend.o Backend.cpp

Bugzilla.o: Bugzilla.cpp Bugzilla.h \
		Backend.h \
		SqlWriterThread.h \
		libmaia/maiaXmlRpcClient.h \
		libmaia/maiaObject.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o Bugzilla.o Bugzilla.cpp

NewTracker.o: NewTracker.cpp NewTracker.h \
		ui_NewTracker.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o NewTracker.o NewTracker.cpp

NovellBugzilla.o: NovellBugzilla.cpp NovellBugzilla.h \
		Bugzilla.h \
		Backend.h \
		SqlWriterThread.h \
		libmaia/maiaXmlRpcClient.h \
		libmaia/maiaObject.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o NovellBugzilla.o NovellBugzilla.cpp

Autodetector.o: Autodetector.cpp libmaia/maiaXmlRpcClient.h \
		libmaia/maiaObject.h \
		NovellBugzilla.h \
		Bugzilla.h \
		Backend.h \
		SqlWriterThread.h \
		Autodetector.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o Autodetector.o Autodetector.cpp

SqlBugModel.o: SqlBugModel.cpp SqlBugModel.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o SqlBugModel.o SqlBugModel.cpp

SqlBugDelegate.o: SqlBugDelegate.cpp SqlBugDelegate.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o SqlBugDelegate.o SqlBugDelegate.cpp

CommentFrame.o: CommentFrame.cpp CommentFrame.h \
		ui_CommentFrame.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o CommentFrame.o CommentFrame.cpp

UploadDialog.o: UploadDialog.cpp UploadDialog.h \
		ui_UploadDialog.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o UploadDialog.o UploadDialog.cpp

Preferences.o: Preferences.cpp Preferences.h \
		ui_Preferences.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o Preferences.o Preferences.cpp

About.o: About.cpp About.h \
		ui_About.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o About.o About.cpp

SqlWriterThread.o: SqlWriterThread.cpp SqlWriterThread.h \
		SqlWriter.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o SqlWriterThread.o SqlWriterThread.cpp

SqlWriter.o: SqlWriter.cpp SqlWriter.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o SqlWriter.o SqlWriter.cpp

PlaceholderLineEdit.o: PlaceholderLineEdit.cpp PlaceholderLineEdit.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o PlaceholderLineEdit.o PlaceholderLineEdit.cpp

moc_MainWindow.o: moc_MainWindow.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_MainWindow.o moc_MainWindow.cpp

moc_maiaXmlRpcServerConnection.o: moc_maiaXmlRpcServerConnection.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_maiaXmlRpcServerConnection.o moc_maiaXmlRpcServerConnection.cpp

moc_maiaXmlRpcServer.o: moc_maiaXmlRpcServer.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_maiaXmlRpcServer.o moc_maiaXmlRpcServer.cpp

moc_maiaXmlRpcClient.o: moc_maiaXmlRpcClient.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_maiaXmlRpcClient.o moc_maiaXmlRpcClient.cpp

moc_maiaObject.o: moc_maiaObject.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_maiaObject.o moc_maiaObject.cpp

moc_maiaFault.o: moc_maiaFault.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_maiaFault.o moc_maiaFault.cpp

moc_Backend.o: moc_Backend.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_Backend.o moc_Backend.cpp

moc_Bugzilla.o: moc_Bugzilla.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_Bugzilla.o moc_Bugzilla.cpp

moc_NewTracker.o: moc_NewTracker.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_NewTracker.o moc_NewTracker.cpp

moc_NovellBugzilla.o: moc_NovellBugzilla.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_NovellBugzilla.o moc_NovellBugzilla.cpp

moc_Autodetector.o: moc_Autodetector.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_Autodetector.o moc_Autodetector.cpp

moc_SqlBugModel.o: moc_SqlBugModel.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_SqlBugModel.o moc_SqlBugModel.cpp

moc_SqlBugDelegate.o: moc_SqlBugDelegate.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_SqlBugDelegate.o moc_SqlBugDelegate.cpp

moc_CommentFrame.o: moc_CommentFrame.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_CommentFrame.o moc_CommentFrame.cpp

moc_UploadDialog.o: moc_UploadDialog.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_UploadDialog.o moc_UploadDialog.cpp

moc_Preferences.o: moc_Preferences.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_Preferences.o moc_Preferences.cpp

moc_About.o: moc_About.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_About.o moc_About.cpp

moc_SqlWriterThread.o: moc_SqlWriterThread.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_SqlWriterThread.o moc_SqlWriterThread.cpp

moc_SqlWriter.o: moc_SqlWriter.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_SqlWriter.o moc_SqlWriter.cpp

moc_PlaceholderLineEdit.o: moc_PlaceholderLineEdit.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_PlaceholderLineEdit.o moc_PlaceholderLineEdit.cpp

qrc_resources.o: qrc_resources.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o qrc_resources.o qrc_resources.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:

