/*
 * Copyright (C) 2016 The CyanogenMod Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
*/

#include <gui/SurfaceComposerClient.h>
#include <ui/Rect.h>
#include <utils/Errors.h>
#include <utils/String8.h>

#include <string>

using android::sp;
using android::IBinder;
using android::IGraphicBufferConsumer;
using android::IGraphicBufferProducer;
using android::Rect;
using android::SurfaceComposerClient;

android::SurfaceComposerClient::Transaction *t;

extern "C" void _ZN7android21SurfaceComposerClient20setDisplayProjectionERKNS_2spINS_7IBinderEEEjRKNS_4RectES8_(
    const sp<IBinder>& token, uint32_t orientation, const Rect& layerStackRect,
    const Rect& displayRect) {
  android::SurfaceComposerClient::Transaction t;
  t.setDisplayProjection(token, orientation, layerStackRect, displayRect);
  t.apply();
}

extern "C" void _ZN7android21SurfaceComposerClient13createSurfaceERKNS_7String8EjjijPNS_14SurfaceControlEjj() { }

extern "C" void _ZN7android21SurfaceComposerClient21openGlobalTransactionEv() {
        t = new(android::SurfaceComposerClient::Transaction);
}

extern "C" void _ZN7android14SurfaceControl8setLayerEi(int32_t layer){}

extern "C" void _ZN7android21SurfaceComposerClient22closeGlobalTransactionEb() {}

// android::Fence::~Fence()
extern "C" void _ZN7android5FenceD1Ev() {
  // no-op, the explicit destructor was replaced with = default;
}
