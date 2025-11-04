/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.hardware.camera.aon;

/**
 * The QRC decode result
 */
@VintfStability
parcelable QRDecodeResult {
    /**
     * Decoded string from the QR code
     */
    String decodedString;

    /**
     * QR Code version
     */
    int version;
}

