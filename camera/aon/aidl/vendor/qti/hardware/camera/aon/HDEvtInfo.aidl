/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */
package vendor.qti.hardware.camera.aon;
@VintfStability
parcelable HDEvtInfo {
  int hdEvtTypeMask;
  int frameDimWidth;
  int frameDimHeight;
  vendor.qti.hardware.camera.aon.HandInfoPerHand[] handInfoPerHand;
}
