/*
* Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
* SPDX-License-Identifier: BSD-3-Clause-Clear
*/

package vendor.qti.hardware.umdservice;

import vendor.qti.hardware.umdservice.AudioStatus;

@VintfStability
interface IUMDAdaptorCallback {
    // Adding return type to method instead of out param int result since there is only one return value.
    int onAudioBufferReceive(in byte[] data);

    void onAudioUevent(in AudioStatus status);
}
