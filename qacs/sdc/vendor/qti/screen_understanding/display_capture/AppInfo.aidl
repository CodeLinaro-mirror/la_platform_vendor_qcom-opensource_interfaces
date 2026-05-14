/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.screen_understanding.display_capture;

/**
 * Information about an application relevant to the capture session.
 */
@VintfStability
parcelable AppInfo {

    /**
     * Application package name.
     * Example: "com.example.app".
     */
    String packageName;

    /**
     * Whether the application is considered sensitive.
     * Sensitive apps may require restricted capture behavior.
     */
    boolean isSensitive;

    /**
     * Application category.
     * Example: "healthcare", "finance", "personal".
     */
    @nullable String category;
}
