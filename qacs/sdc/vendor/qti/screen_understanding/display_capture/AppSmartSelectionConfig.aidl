/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.screen_understanding.display_capture;

import vendor.qti.screen_understanding.display_capture.SelectorConfig;
import vendor.qti.screen_understanding.display_capture.ExtractorConfig;
import vendor.qti.screen_understanding.display_capture.MatcherConfig;

/**
* Per‑app configuration block.
*/
@VintfStability
parcelable AppSmartSelectionConfig {

    /**
    * Application package name.
    */
    String appName;

    /**
    * Whether Smart Selection is enabled for this specific app.
    */
    boolean enabled;

    /**
    * Selector configuration for this app.
    */
    SelectorConfig selector;

    /**
    * Extractor configuration for this app.
    */
    ExtractorConfig extractor;

    /**
    * Matcher configuration for this app.
    */
    MatcherConfig matcher;
}
