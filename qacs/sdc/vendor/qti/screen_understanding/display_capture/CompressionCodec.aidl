/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.screen_understanding.display_capture;

/**
 * Compression codec types supported for screen capture encoding.
 *
 * Used in BufferEntry to indicate how a buffer has been compressed.
 */
@VintfStability
enum CompressionCodec {
    UNKNOWN = 0,
    JPEG = 1,
    H264 = 2,
    HEVC = 3,
    AV1 = 4,
}
