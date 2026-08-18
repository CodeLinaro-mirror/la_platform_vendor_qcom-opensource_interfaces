/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.hardware.umd_aidl;

import vendor.qti.hardware.umd_aidl.AudioStatus;

@VintfStability
interface IUMDAdaptorCallback {
  int onAudioBufferReceive(in byte[] data);
  void onAudioUevent(in AudioStatus status);
}
