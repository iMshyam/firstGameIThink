LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

$(call import-add-path,$(LOCAL_PATH)/../../cocos2d)
$(call import-add-path,$(LOCAL_PATH)/../../cocos2d/external)
$(call import-add-path,$(LOCAL_PATH)/../../cocos2d/cocos)

LOCAL_MODULE := cocos2dcpp_shared

LOCAL_MODULE_FILENAME := libcocos2dcpp

LOCAL_SRC_FILES := hellocpp/main.cpp \
                   ../../Classes/AppDelegate.cpp \
                   ../../Classes/HelloWorldScene.cpp \
                   ../../Classes/HighScene.cpp \
                   ../../Classes/LevelScene.cpp \
                   ../../Classes/PauseScene.cpp \
                   ../../Classes/GameOverScene.cpp \
                   ../../Classes/Ball.cpp \
                   ../../Classes/UserPaddle.cpp \
                   ../../Classes/CpuPaddle.cpp \
                   ../../Classes/sqlite3.c \
                   ../../Classes/GameScene.cpp  

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../Classes

LOCAL_LDFLAGS := -Wl,--allow-multiple-definition

# _COCOS_HEADER_ANDROID_BEGIN
# _COCOS_HEADER_ANDROID_END


LOCAL_STATIC_LIBRARIES := cocos2dx_static

# _COCOS_LIB_ANDROID_BEGIN
# _COCOS_LIB_ANDROID_END

include $(BUILD_SHARED_LIBRARY)

$(call import-module,.)

# _COCOS_LIB_IMPORT_ANDROID_BEGIN
# _COCOS_LIB_IMPORT_ANDROID_END
