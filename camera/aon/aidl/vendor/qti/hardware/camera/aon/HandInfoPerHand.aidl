/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */
package vendor.qti.hardware.camera.aon;
@VintfStability
parcelable HandInfoPerHand {
    int confidence;      
    int width;
    int height;
    vendor.qti.hardware.camera.aon.HandPosType topLeftCorner;
    vendor.qti.hardware.camera.aon.HandPosType[] keyPointsList;
    vendor.qti.hardware.camera.aon.HDGestureInfoType gestureInfo;
}
