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

// android::SurfaceComposerClient::createSurface(android::String8 const&, unsigned int, unsigned int, int, unsigned int, android::SurfaceControl*, unsigned int, unsigned int)
extern "C" void* _ZN7android21SurfaceComposerClient13createSurfaceERKNS_7String8EjjijPNS_14SurfaceControlEii(android::String8 const & s, uint32_t w, uint32_t h,
    android::PixelFormat format, uint32_t flags, void *parent, int32_t  windowType, int32_t ownerUid);

// android::SurfaceComposerClient::createSurface(android::String8 const&, unsigned int, unsigned int, int, unsigned int, android::SurfaceControl*, int, int)
extern "C" void* _ZN7android21SurfaceComposerClient13createSurfaceERKNS_7String8EjjijPNS_14SurfaceControlEjj(android::String8 const& s, uint32_t w, uint32_t h, android::PixelFormat fmt, uint32_t flags, void *parent, uint32_t windowType, uint32_t ownerUid) {
    return _ZN7android21SurfaceComposerClient13createSurfaceERKNS_7String8EjjijPNS_14SurfaceControlEii(s, w, h, fmt, flags, parent, static_cast<int32_t>(windowType), static_cast<int32_t>(ownerUid));
}

extern "C" void _ZN7android21SurfaceComposerClient21openGlobalTransactionEv() {
        t = new(android::SurfaceComposerClient::Transaction);
}

extern "C" void _ZN7android14SurfaceControl8setLayerEi(int32_t layer){}

extern "C" void _ZN7android21SurfaceComposerClient22closeGlobalTransactionEb() {}
