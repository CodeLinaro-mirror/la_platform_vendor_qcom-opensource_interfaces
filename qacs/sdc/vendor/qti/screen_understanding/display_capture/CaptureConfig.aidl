/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.screen_understanding.display_capture;

import vendor.qti.screen_understanding.display_capture.AppInfo;
import vendor.qti.screen_understanding.display_capture.SmartSelectionConfig;
import vendor.qti.screen_understanding.display_capture.PixelFormat;

/**
 * Configuration for initializing or updating a capture session.
 */
@VintfStability
parcelable CaptureConfig {

    /**
     * Target capture resolution width in pixels.
     * Valid range: 1 to 7680 (8K width)
     */
    int width;

    /**
     * Target capture resolution height in pixels.
     * Valid range: 1 to 4320 (8K height)
     */
    int height;

    /**
     * Pixel format of the captured frames.
     * Must match one of the values defined in PixelFormat.
     */
    PixelFormat format;

    /**
     * Desired capture framerate in frames per second.
     * Valid range: 1 to 120 fps
     */
    int framerate;

    /**
     * Active Android user ID requesting capture.
     * Matches UserHandle.of(userId).
     */
    int userId;

    /**
     * List of applications relevant to the capture session.
     * Each entry includes the package name and whether the app
     * is considered sensitive for capture or processing.
     */
    AppInfo[] appList;

    /**
     * Optional Smart Selection configuration.
     */
    @nullable SmartSelectionConfig smartConfig;

    /**
    * Optional algorithm-specific configuration data.
    */
    @nullable byte[] algoConfigBlob;
}
