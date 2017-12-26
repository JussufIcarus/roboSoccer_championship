#############################################################################
# Makefile for building: bin/soccer
# Generated by qmake (2.01a) (Qt 4.8.6) on: Mon Jul 4 10:54:13 2016
# Project:  soccer.pro
# Template: app
# Command: /usr/bin/qmake-qt4 -spec /usr/share/qt4/mkspecs/linux-g++-64 -o Makefile soccer.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_GUI_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -m64 -pipe -g -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -m64 -pipe -isystem/DIST/lehre/lab_roso/tech/usr/include/rtdb -isystem/DIST/lehre/lab_roso/tech/usr/include/roboctrl -isystem/DIST/lehre/lab_roso/tech/usr/include/libmath -O2 -Wall -Wextra -Werror -Wuninitialized -Wno-unused-variable -Wno-unused-but-set-variable -std=gnu++11 -fpermissive -g -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I/usr/share/qt4/mkspecs/linux-g++-64 -I. -I/usr/include/qt4/QtCore -I/usr/include/qt4/QtGui -I/usr/include/qt4 -I/DIST/lehre/lab_roso/tech/usr/include/rtdb -I/DIST/lehre/lab_roso/tech/usr/include/roboctrl -I/DIST/lehre/lab_roso/tech/usr/include/libmath -Isrc -I.moc
LINK          = g++
LFLAGS        = -m64
LIBS          = $(SUBLIBS)  -L/usr/lib/x86_64-linux-gnu -L/DIST/lehre/lab_roso/tech/usr/lib -lboost_system -L/usr/lib -lpololu_rtdb -lkogmo_rtdb -lQtGui -lQtCore -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/bin/qmake-qt4
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

OBJECTS_DIR   = .obj/

####### Files

SOURCES       = src/GoalKeeper.cpp \
		src/main.cpp \
		src/GameControl.cpp \
		src/FieldPlayer.cpp \
		src/Physics.cpp \
		src/Agent.cpp \
		src/Path.cpp \
		src/Debug.cpp \
		helper/Vector2d.cpp \
		helper/Circle.cpp \
		helper/Line.cpp \
		helper/LineSegment.cpp \
		helper/Quadrangle.cpp \
		helper/Obstacle.cpp \
		helper/Node.cpp \
		helper/KdTree.cpp \
		helper/Trajectory.cpp \
		src/Enemy.cpp 
OBJECTS       = .obj/GoalKeeper.o \
		.obj/main.o \
		.obj/GameControl.o \
		.obj/FieldPlayer.o \
		.obj/Physics.o \
		.obj/Agent.o \
		.obj/Path.o \
		.obj/Debug.o \
		.obj/Vector2d.o \
		.obj/Circle.o \
		.obj/Line.o \
		.obj/LineSegment.o \
		.obj/Quadrangle.o \
		.obj/Obstacle.o \
		.obj/Node.o \
		.obj/KdTree.o \
		.obj/Trajectory.o \
		.obj/Enemy.o
DIST          = /usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/common/gcc-base.conf \
		/usr/share/qt4/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt4/mkspecs/common/g++-base.conf \
		/usr/share/qt4/mkspecs/common/g++-unix.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		settings.pri \
		/usr/share/qt4/mkspecs/features/debug.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/shared.prf \
		/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		soccer.pro
QMAKE_TARGET  = soccer
DESTDIR       = bin/
TARGET        = bin/soccer

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

$(TARGET):  $(OBJECTS)  
	@$(CHK_DIR_EXISTS) bin/ || $(MKDIR) bin/ 
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)
	{ test -n "$(DESTDIR)" && DESTDIR="$(DESTDIR)" || DESTDIR=.; } && test $$(gdb --version | sed -e 's,[^0-9][^0-9]*\([0-9]\)\.\([0-9]\).*,\1\2,;q') -gt 72 && gdb --nx --batch --quiet -ex 'set confirm off' -ex "save gdb-index $$DESTDIR" -ex quit '$(TARGET)' && test -f $(TARGET).gdb-index && objcopy --add-section '.gdb_index=$(TARGET).gdb-index' --set-section-flags '.gdb_index=readonly' '$(TARGET)' '$(TARGET)' && rm -f $(TARGET).gdb-index || true

Makefile: soccer.pro  /usr/share/qt4/mkspecs/linux-g++-64/qmake.conf /usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/common/gcc-base.conf \
		/usr/share/qt4/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt4/mkspecs/common/g++-base.conf \
		/usr/share/qt4/mkspecs/common/g++-unix.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		settings.pri \
		/usr/share/qt4/mkspecs/features/debug.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/shared.prf \
		/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		/usr/lib/x86_64-linux-gnu/libQtGui.prl \
		/usr/lib/x86_64-linux-gnu/libQtCore.prl
	$(QMAKE) -spec /usr/share/qt4/mkspecs/linux-g++-64 -o Makefile soccer.pro
/usr/share/qt4/mkspecs/common/unix.conf:
/usr/share/qt4/mkspecs/common/linux.conf:
/usr/share/qt4/mkspecs/common/gcc-base.conf:
/usr/share/qt4/mkspecs/common/gcc-base-unix.conf:
/usr/share/qt4/mkspecs/common/g++-base.conf:
/usr/share/qt4/mkspecs/common/g++-unix.conf:
/usr/share/qt4/mkspecs/qconfig.pri:
/usr/share/qt4/mkspecs/features/qt_functions.prf:
/usr/share/qt4/mkspecs/features/qt_config.prf:
/usr/share/qt4/mkspecs/features/exclusive_builds.prf:
/usr/share/qt4/mkspecs/features/default_pre.prf:
settings.pri:
/usr/share/qt4/mkspecs/features/debug.prf:
/usr/share/qt4/mkspecs/features/default_post.prf:
/usr/share/qt4/mkspecs/features/shared.prf:
/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf:
/usr/share/qt4/mkspecs/features/warn_on.prf:
/usr/share/qt4/mkspecs/features/qt.prf:
/usr/share/qt4/mkspecs/features/unix/thread.prf:
/usr/share/qt4/mkspecs/features/moc.prf:
/usr/share/qt4/mkspecs/features/resources.prf:
/usr/share/qt4/mkspecs/features/uic.prf:
/usr/share/qt4/mkspecs/features/yacc.prf:
/usr/share/qt4/mkspecs/features/lex.prf:
/usr/share/qt4/mkspecs/features/include_source_dir.prf:
/usr/lib/x86_64-linux-gnu/libQtGui.prl:
/usr/lib/x86_64-linux-gnu/libQtCore.prl:
qmake:  FORCE
	@$(QMAKE) -spec /usr/share/qt4/mkspecs/linux-g++-64 -o Makefile soccer.pro

dist: 
	@$(CHK_DIR_EXISTS) .obj/soccer1.0.0 || $(MKDIR) .obj/soccer1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .obj/soccer1.0.0/ && $(COPY_FILE) --parents lib/GoalKeeper.h lib/Agent.h lib/FieldPlayer.h lib/Physics.h lib/GameControl.h lib/Enemy.h lib/RunnableObject.h lib/StateMachine.h lib/Path.h lib/Geometry.h lib/Debug.h helper/Vector2d.h helper/Line.h helper/LineSegment.h helper/Obstacle.h helper/Circle.h helper/Quadrangle.h helper/Node.h helper/KdTree.h helper/Trajectory.h lib/Ball.h .obj/soccer1.0.0/ && $(COPY_FILE) --parents src/GoalKeeper.cpp src/main.cpp src/GameControl.cpp src/FieldPlayer.cpp src/Physics.cpp src/Agent.cpp src/Path.cpp src/Debug.cpp helper/Vector2d.cpp helper/Circle.cpp helper/Line.cpp helper/LineSegment.cpp helper/Quadrangle.cpp helper/Obstacle.cpp helper/Node.cpp helper/KdTree.cpp helper/Trajectory.cpp src/Enemy.cpp .obj/soccer1.0.0/ && (cd `dirname .obj/soccer1.0.0` && $(TAR) soccer1.0.0.tar soccer1.0.0 && $(COMPRESS) soccer1.0.0.tar) && $(MOVE) `dirname .obj/soccer1.0.0`/soccer1.0.0.tar.gz . && $(DEL_FILE) -r .obj/soccer1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


doc: FORCE
	doxygen Doxyfile

check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all:
compiler_moc_header_clean:
compiler_rcc_make_all:
compiler_rcc_clean:
compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all:
compiler_uic_clean:
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: 

####### Compile

.obj/GoalKeeper.o: src/GoalKeeper.cpp lib/GoalKeeper.h \
		lib/Agent.h \
		lib/Path.h \
		lib/Geometry.h \
		helper/Vector2d.h \
		helper/Line.h \
		helper/LineSegment.h \
		helper/Obstacle.h \
		helper/Circle.h \
		helper/Quadrangle.h \
		helper/KdTree.h \
		helper/Node.h \
		lib/RunnableObject.h \
		lib/StateMachine.h \
		lib/Physics.h \
		lib/Enemy.h \
		lib/Ball.h \
		helper/Trajectory.h \
		lib/FieldPlayer.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/GoalKeeper.o src/GoalKeeper.cpp

.obj/main.o: src/main.cpp lib/GoalKeeper.h \
		lib/Agent.h \
		lib/Path.h \
		lib/Geometry.h \
		helper/Vector2d.h \
		helper/Line.h \
		helper/LineSegment.h \
		helper/Obstacle.h \
		helper/Circle.h \
		helper/Quadrangle.h \
		helper/KdTree.h \
		helper/Node.h \
		lib/RunnableObject.h \
		lib/StateMachine.h \
		lib/Physics.h \
		lib/Enemy.h \
		lib/Ball.h \
		helper/Trajectory.h \
		lib/FieldPlayer.h \
		lib/GameControl.h \
		lib/Debug.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/main.o src/main.cpp

.obj/GameControl.o: src/GameControl.cpp lib/GameControl.h \
		lib/Physics.h \
		lib/Agent.h \
		lib/Path.h \
		lib/Geometry.h \
		helper/Vector2d.h \
		helper/Line.h \
		helper/LineSegment.h \
		helper/Obstacle.h \
		helper/Circle.h \
		helper/Quadrangle.h \
		helper/KdTree.h \
		helper/Node.h \
		lib/RunnableObject.h \
		lib/StateMachine.h \
		lib/Enemy.h \
		lib/Ball.h \
		helper/Trajectory.h \
		lib/GoalKeeper.h \
		lib/FieldPlayer.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/GameControl.o src/GameControl.cpp

.obj/FieldPlayer.o: src/FieldPlayer.cpp lib/FieldPlayer.h \
		lib/Agent.h \
		lib/Path.h \
		lib/Geometry.h \
		helper/Vector2d.h \
		helper/Line.h \
		helper/LineSegment.h \
		helper/Obstacle.h \
		helper/Circle.h \
		helper/Quadrangle.h \
		helper/KdTree.h \
		helper/Node.h \
		lib/RunnableObject.h \
		lib/StateMachine.h \
		lib/Physics.h \
		lib/Enemy.h \
		lib/Ball.h \
		helper/Trajectory.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/FieldPlayer.o src/FieldPlayer.cpp

.obj/Physics.o: src/Physics.cpp lib/Physics.h \
		lib/Agent.h \
		lib/Path.h \
		lib/Geometry.h \
		helper/Vector2d.h \
		helper/Line.h \
		helper/LineSegment.h \
		helper/Obstacle.h \
		helper/Circle.h \
		helper/Quadrangle.h \
		helper/KdTree.h \
		helper/Node.h \
		lib/RunnableObject.h \
		lib/StateMachine.h \
		lib/Enemy.h \
		lib/Ball.h \
		helper/Trajectory.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/Physics.o src/Physics.cpp

.obj/Agent.o: src/Agent.cpp lib/Agent.h \
		lib/Path.h \
		lib/Geometry.h \
		helper/Vector2d.h \
		helper/Line.h \
		helper/LineSegment.h \
		helper/Obstacle.h \
		helper/Circle.h \
		helper/Quadrangle.h \
		helper/KdTree.h \
		helper/Node.h \
		lib/RunnableObject.h \
		lib/StateMachine.h \
		lib/Physics.h \
		lib/Enemy.h \
		lib/Ball.h \
		helper/Trajectory.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/Agent.o src/Agent.cpp

.obj/Path.o: src/Path.cpp lib/Path.h \
		lib/Geometry.h \
		helper/Vector2d.h \
		helper/Line.h \
		helper/LineSegment.h \
		helper/Obstacle.h \
		helper/Circle.h \
		helper/Quadrangle.h \
		helper/KdTree.h \
		helper/Node.h \
		lib/Physics.h \
		lib/Agent.h \
		lib/RunnableObject.h \
		lib/StateMachine.h \
		lib/Enemy.h \
		lib/Ball.h \
		helper/Trajectory.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/Path.o src/Path.cpp

.obj/Debug.o: src/Debug.cpp lib/Debug.h \
		lib/GameControl.h \
		lib/Physics.h \
		lib/Agent.h \
		lib/Path.h \
		lib/Geometry.h \
		helper/Vector2d.h \
		helper/Line.h \
		helper/LineSegment.h \
		helper/Obstacle.h \
		helper/Circle.h \
		helper/Quadrangle.h \
		helper/KdTree.h \
		helper/Node.h \
		lib/RunnableObject.h \
		lib/StateMachine.h \
		lib/Enemy.h \
		lib/Ball.h \
		helper/Trajectory.h \
		lib/GoalKeeper.h \
		lib/FieldPlayer.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/Debug.o src/Debug.cpp

.obj/Vector2d.o: helper/Vector2d.cpp helper/Vector2d.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/Vector2d.o helper/Vector2d.cpp

.obj/Circle.o: helper/Circle.cpp helper/Circle.h \
		helper/Obstacle.h \
		helper/Line.h \
		helper/Vector2d.h \
		helper/LineSegment.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/Circle.o helper/Circle.cpp

.obj/Line.o: helper/Line.cpp helper/Line.h \
		helper/Vector2d.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/Line.o helper/Line.cpp

.obj/LineSegment.o: helper/LineSegment.cpp helper/LineSegment.h \
		helper/Line.h \
		helper/Vector2d.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/LineSegment.o helper/LineSegment.cpp

.obj/Quadrangle.o: helper/Quadrangle.cpp helper/Quadrangle.h \
		helper/Obstacle.h \
		helper/Line.h \
		helper/Vector2d.h \
		helper/LineSegment.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/Quadrangle.o helper/Quadrangle.cpp

.obj/Obstacle.o: helper/Obstacle.cpp helper/Obstacle.h \
		helper/Line.h \
		helper/Vector2d.h \
		helper/LineSegment.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/Obstacle.o helper/Obstacle.cpp

.obj/Node.o: helper/Node.cpp helper/Node.h \
		lib/Geometry.h \
		helper/Vector2d.h \
		helper/Line.h \
		helper/LineSegment.h \
		helper/Obstacle.h \
		helper/Circle.h \
		helper/Quadrangle.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/Node.o helper/Node.cpp

.obj/KdTree.o: helper/KdTree.cpp helper/KdTree.h \
		helper/Node.h \
		lib/Geometry.h \
		helper/Vector2d.h \
		helper/Line.h \
		helper/LineSegment.h \
		helper/Obstacle.h \
		helper/Circle.h \
		helper/Quadrangle.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/KdTree.o helper/KdTree.cpp

.obj/Trajectory.o: helper/Trajectory.cpp helper/Trajectory.h \
		lib/Geometry.h \
		helper/Vector2d.h \
		helper/Line.h \
		helper/LineSegment.h \
		helper/Obstacle.h \
		helper/Circle.h \
		helper/Quadrangle.h \
		lib/Physics.h \
		lib/Agent.h \
		lib/Path.h \
		helper/KdTree.h \
		helper/Node.h \
		lib/RunnableObject.h \
		lib/StateMachine.h \
		lib/Enemy.h \
		lib/Ball.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/Trajectory.o helper/Trajectory.cpp

.obj/Enemy.o: src/Enemy.cpp lib/Enemy.h \
		lib/Physics.h \
		lib/Agent.h \
		lib/Path.h \
		lib/Geometry.h \
		helper/Vector2d.h \
		helper/Line.h \
		helper/LineSegment.h \
		helper/Obstacle.h \
		helper/Circle.h \
		helper/Quadrangle.h \
		helper/KdTree.h \
		helper/Node.h \
		lib/RunnableObject.h \
		lib/StateMachine.h \
		lib/Ball.h \
		helper/Trajectory.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/Enemy.o src/Enemy.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:

