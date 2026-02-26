/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.qaior.screen_understanding;

/**
* Extractor parameters.
*/
@VintfStability
parcelable ExtractorConfig {
    int topK;
    int height;
    float detectionThreshold;
    boolean isPath;
}
