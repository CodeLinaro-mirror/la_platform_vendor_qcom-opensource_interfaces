/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.screen_understanding.display_capture;

/**
 * Pixel format types for screen capture buffers.
 *
 * Used in BufferEntry to describe the format of uncompressed buffer data.
 */
@VintfStability
enum PixelFormat {
    UNKNOWN = 0,
    RGBA_8888 = 1,
}
