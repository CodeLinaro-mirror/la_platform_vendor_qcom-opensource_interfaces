/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.screen_understanding.display_capture;

/**
* Selector parameters.
*/
@VintfStability
parcelable SelectorConfig {
    /**
     * Threshold for accepting a detection as valid.
     * Valid range: 0.0 to 1.0 (confidence score)
     * Higher values are more restrictive.
     */
    float acceptThreshold;

    /**
     * Threshold for removing a previously accepted detection.
     * Valid range: 0.0 to 1.0 (confidence score)
     * Should typically be lower than acceptThreshold to provide hysteresis.
     */
    float removeThreshold;

    /**
     * Maximum number of detections to maintain.
     * Valid range: 1 to 128
     * Limits memory usage and processing overhead.
     */
    int maxSize;
}
