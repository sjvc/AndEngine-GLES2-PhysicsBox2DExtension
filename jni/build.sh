#! /bin/sh

NDK_DIRECTORY="/Users/sergio/Library/Android/android-ndk-r13b/"
PROJECT_DIRECTORY="/Users/sergio/Development/android/studio/_libs_/AndEngineGLES2/AndEnginePhysicsBox2DExtension/"

# Run build:
cd ${PROJECT_DIRECTORY}
${NDK_DIRECTORY}ndk-build

# Clean temporary files:
rm -rf ${PROJECT_DIRECTORY}obj
find . -name gdbserver -print0 | xargs -0 rm -rf
find . -name gdb.setup -print0 | xargs -0 rm -rf