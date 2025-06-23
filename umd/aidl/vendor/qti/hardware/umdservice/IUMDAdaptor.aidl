/*
* Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
* SPDX-License-Identifier: BSD-3-Clause-Clear
*/

package vendor.qti.hardware.umdservice;

import vendor.qti.hardware.umdservice.IUMDAdaptorCallback;

@VintfStability
interface IUMDAdaptor {
    void deInitUAC();

    void deInitUVC();

    // Adding return type to method instead of out param int result since there is only one return value.
    int initUAC(in IUMDAdaptorCallback callback);

    // Adding return type to method instead of out param int result since there is only one return value.
    int initUVC();

    void setAudioBufferSize(in long size);

    // Adding return type to method instead of out param int result since there is only one return value.
    int submitAudioBuffer(in byte[] data);
}
