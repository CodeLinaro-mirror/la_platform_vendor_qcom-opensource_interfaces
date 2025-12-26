/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.hardware.camera.aon;
import vendor.qti.hardware.camera.aon.QRDetectionResultType;
import vendor.qti.hardware.camera.aon.CameraRectangle;
import vendor.qti.hardware.camera.aon.QRDecodeResult;

/**
 * The information per QRDetectionResult passed from the event of QRC service type
 */
@VintfStability
parcelable QRDetectionResult {
    int confidence;
    /**
     * The frame dimension where ROI Coordinates will be based on
     */
    int dimWidth;
    int dimHeight;

    /**
     * The detected QRC result's bounding box and coordinate
     */
    CameraRectangle rect;

    /**
     * The detected result type can be QRCode, BarCode or TikTok 
     */
    QRDetectionResultType resultType; 

    /**
     * When QR decode is performed, below contains the decoded result type of
     * the detected QRCode.
     * Note: This is not applicable to Barcode or TikTok code
     */
    @nullable QRDecodeResult QRdecodeResult;

}
