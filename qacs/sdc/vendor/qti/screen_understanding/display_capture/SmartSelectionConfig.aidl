/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.screen_understanding.display_capture;

import vendor.qti.screen_understanding.display_capture.AppSmartSelectionConfig;
import vendor.qti.screen_understanding.display_capture.PixelFormat;

@VintfStability
parcelable SmartSelectionConfig {

    /**
     * Global enable/disable flag for Smart Selection.
     */
    boolean enableSmartSelection;

    /**
     * Global keypoint threshold.
     */
    int keypointThreshold;

    /**
     * Global maximum number of detections.
     */
    int maxDetections;

    /**
     * Global input resolution required by Smart Selection.
     * Applies to all apps unless overridden in per-app config.
     */
    int inputWidth;
    int inputHeight;

    /**
     * Global pixel format required by Smart Selection.
     */
    PixelFormat inputFormat;

    /**
     * Optional per‑app Smart Selection configuration.
     * Each entry may override global settings.
     */
    @nullable AppSmartSelectionConfig[] perAppConfig;

}
