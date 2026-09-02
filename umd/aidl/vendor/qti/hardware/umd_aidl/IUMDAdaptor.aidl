/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.hardware.umd_aidl;

import vendor.qti.hardware.umd_aidl.IUMDAdaptorCallback;

@VintfStability
interface IUMDAdaptor {
  int initUVC();
  void deInitUVC();
  int initUAC(in IUMDAdaptorCallback callback);
  void deInitUAC();
  int submitAudioBuffer(in byte[] data);
  void setAudioBufferSize(in long size);
}
