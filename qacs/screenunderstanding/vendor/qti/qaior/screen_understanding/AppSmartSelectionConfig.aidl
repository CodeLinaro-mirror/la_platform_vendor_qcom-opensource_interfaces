/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.qaior.screen_understanding;

import vendor.qti.qaior.screen_understanding.SelectorConfig;
import vendor.qti.qaior.screen_understanding.ExtractorConfig;
import vendor.qti.qaior.screen_understanding.MatcherConfig;

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
