/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */
package vendor.qti.hardware.camera.aon;
@VintfStability
parcelable HDRegisterInfo {
  int hdEvtTypeMask;
  vendor.qti.hardware.camera.aon.DeliveryMode deliveryMode;
  int deliveryPeriodMs;
  int detectionPerDelivery;
  boolean detectGesture;
}
