/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.screen_understanding.display_capture;

import android.os.ParcelFileDescriptor;
import vendor.qti.screen_understanding.display_capture.PixelFormat;
import vendor.qti.screen_understanding.display_capture.CompressionCodec;

/**
 * Represents a single buffer component within a captured frame set.
 *
 * A BufferEntry encapsulates one buffer (via file descriptor) along with
 * its associated metadata. Multiple entries can represent different aspects
 * of the same capture (e.g., original raw buffer, compressed version, or
 * auxiliary metadata).
 *
 */
@VintfStability
parcelable BufferEntry {

    /**
     * File descriptor for accessing this buffer's memory.
     *
     * The FD provides access to the underlying buffer data. The client
     * is responsible for closing this FD when done. The buffer may be
     * backed by shared memory, ION, or other memory allocation mechanisms.
     */
    ParcelFileDescriptor fd;

    /**
     * Semantic type identifier for this buffer component.
     *
     * Indicates the role or purpose of this buffer entry within the set.
     * Common values:
     * - "original": Raw, uncompressed capture buffer
     * - "compressed": Encoded/compressed version of the capture
     * - "metadata": Auxiliary metadata or sidecar information
     *
     * Custom types may be defined based on implementation needs.
     */
    String type;

    /**
     * Width of the buffer in pixels.
     *
     * Represents the horizontal dimension of the captured content.
     * Set to 0 if not applicable (e.g., for metadata-only entries).
     */
    int width;

    /**
     * Height of the buffer in pixels.
     *
     * Represents the vertical dimension of the captured content.
     * Set to 0 if not applicable (e.g., for metadata-only entries).
     */
    int height;

    /**
     * Pixel format of the buffer data.
     *
     * Describes the memory layout and color encoding of pixel data.
     * Examples: RGBA_8888, NV12, YUV420, etc.
     * Only applicable for image/video buffer types.
     */
    PixelFormat format;

    /**
     * Compression codec applied to this buffer.
     *
     * Specifies the encoding/compression algorithm used, if any.
     * Examples: H.264, H.265/HEVC, VP9, JPEG, or NONE for uncompressed.
     * Only relevant for "compressed" type entries.
     */
    CompressionCodec codec;
}
