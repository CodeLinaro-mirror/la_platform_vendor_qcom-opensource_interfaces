/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.screen_understanding.display_capture;

import vendor.qti.screen_understanding.display_capture.BufferEntry;
import vendor.qti.screen_understanding.display_capture.AppInfo;

/**
 * Container for a complete captured frame with all its buffer components.
 *
 * BufferInfo aggregates one or more BufferEntry objects representing
 * different representations or aspects of a single screen capture event.
 * This allows flexible delivery of captures in multiple formats simultaneously
 * (e.g., both raw and compressed versions).
 *
 */
@VintfStability
parcelable BufferInfo {
    /**
     * Array of buffer entries comprising this capture.
     *
     * Each entry represents a different aspect or format of the same
     * captured frame. The array may contain:
     * - A single entry (simple case: one buffer format)
     * - Multiple entries (e.g., original + compressed + metadata)
     */
    BufferEntry[] entries;

    /**
     * Timestamp or frame identifier.
     */
    long timestamp;

    /**
    * App info for the captured buffer
    */
   AppInfo appInfo;
}
