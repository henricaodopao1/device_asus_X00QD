//
// Copyright (C) 2022 The LineageOS Project
// SPDX-License-Identifier: Apache-2.0
//

#define LOG_TAG "vendor.lineage.touch@1.0-service.X00QD"

#include <android-base/logging.h>
#include <binder/ProcessState.h>
#include <hidl/HidlTransportSupport.h>
#include "GloveMode.h"

using ::vendor::lineage::touch::V1_0::IGloveMode;
using ::vendor::lineage::touch::V1_0::implementation::GloveMode;

int main() {
    android::sp<GloveMode> gloveMode = new GloveMode();

    android::hardware::configureRpcThreadpool(1, true /*callerWillJoin*/);

    if (gloveMode->registerAsService() != android::OK) {
        LOG(ERROR) << "Can not create an instance of Touch HAL GloveMode Iface, exiting.";
        return 1;
    }
    
    LOG(INFO) << "GloveMode HAL service ready.";

    android::hardware::joinRpcThreadpool();

    LOG(ERROR) << "GloveMode HAL service failed to join thread pool.";
    return 1;
}
