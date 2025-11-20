/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.hardware.camera.aon;

/**
 * The QRC detection result type enum
 */
@VintfStability
@Backing(type="int")
enum QRDetectionResultType {
    /**
     * QRC service detected result type is QRCode
     */
    QRCode = 0,
    /**
     * QRC service detected result type is BarCode
     */
    BarCode = 1,
    /**
     * QRC service detected result type is TikTok 
     */
    TikTok = 2,
}
