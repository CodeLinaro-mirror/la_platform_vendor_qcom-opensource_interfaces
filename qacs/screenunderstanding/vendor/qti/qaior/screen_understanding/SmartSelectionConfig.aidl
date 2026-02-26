/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.qaior.screen_understanding;

import vendor.qti.qaior.screen_understanding.AppSmartSelectionConfig;
import vendor.qti.qaior.screen_understanding.PixelFormat;

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
