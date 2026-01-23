/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.hardware.camera.aon;

/**
 * The event information for FaceDetect AONServiceType
 */
@VintfStability
parcelable FDEvtInfo {
    /**
     * Bit Mask to indicate the FDEvtTypes of this event.
     * If fdEvtTypeMask is 0x5(0x1|0x4), that means both
     * face & gaze are detected by AONService
     */
    int fdEvtTypeMask;
}
