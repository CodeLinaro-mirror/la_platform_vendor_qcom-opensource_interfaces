/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.hardware.camera.aon;
import vendor.qti.hardware.camera.aon.QRDetectionResult;

/**
 * The event information for QRCode AONServiceType
 */
@VintfStability
parcelable QREvtInfo {
    /**
     * Bit Mask to indicate the QREvtTypes of this event.
     */
    int qrEvtTypeMask;

    /**
     * An vector of the QRDetectionResult information
     */
    @nullable QRDetectionResult[] perQRDetectionResult;
}
