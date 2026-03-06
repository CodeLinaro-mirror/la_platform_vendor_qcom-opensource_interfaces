/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.screen_understanding.display_capture;

import vendor.qti.screen_understanding.display_capture.CompressionCodec;

/**
 * Configuration for data‑path subscriptions.
 */
@VintfStability
parcelable ReceiverConfig {

    /**
     * Active Android user ID requesting capture.
     * Matches UserHandle.of(userId).
     */
    int userId;

    /**
     * App selection mode for this subscription.
     *
     * "all"                   → receive data for all apps
     * "all_except_sensitive" → receive data for all apps except sensitive ones
     * "list"                  → use packageList for explicit filtering
     */
    String appSelectionMode;

    /**
     * List of package names used when appSelectionMode == "list".
     * Ignored for other modes.
     */
    String[] packageList;

    /**
     * Compression codec to use for delivered buffers.
     */
    CompressionCodec compressionCodec;
}
