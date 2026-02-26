/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.qaior.screen_understanding;

/**
 * Configuration describing what capture state should be deleted.
 * Supports deleting all captures, only sensitive-app captures,
 * or captures associated with specific applications.
 */
@VintfStability
parcelable DeleteConfig {

    /**
     * If true, delete all captures for this session.
     */
    boolean deleteAllCaptures;

    /**
     * If true, delete only captures associated with sensitive apps.
     * Sensitivity is determined by the AppInfo entries in CaptureConfig.
     */
    boolean deleteSensitiveAppCaptures;

    /**
     * Optional list of application package names whose captures
     * should be deleted. Used when the caller wants to delete
     * captures for specific apps only.
     */
    @nullable String[] appPackageNames;
}
