/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.screen_understanding.display_capture;

/**
 * Parameters describing a specific capture trigger event.
 * These values are typically derived from Android Accessibility events.
 */
@VintfStability
parcelable CaptureParams {

    /**
     * Name of the application associated with the triggering event.
     * Example: "com.example.app".
     */
    String appName;

    /**
    * Accessibility event type that triggered the capture.
    * Must be a valid android.view.accessibility.AccessibilityEvent constant.
    * Example values: TYPE_WINDOW_STATE_CHANGED (32), TYPE_WINDOW_CONTENT_CHANGED (2048)
    * @see android.view.accessibility.AccessibilityEvent
    */
    int accessibilityEventType;

    /**
    * Timestamp of the event in nanoseconds.
    * Must be a positive value representing time since epoch or system boot.
    * Value must be > 0.
    */
    long timestampNs;

    /**
     * Optional tag for debugging, logging, or correlation.
     */
    @nullable String tag;
}
