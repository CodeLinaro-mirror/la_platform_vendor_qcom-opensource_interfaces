/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.screen_understanding.display_capture;

import vendor.qti.screen_understanding.display_capture.StatusCode;

@VintfStability
parcelable Status {
    boolean success;

    /**
     * Machine‑readable status code describing the result.
     */
    StatusCode code;

    /**
     * Optional human‑readable message for debugging or logging.
     */
    @nullable String message;
}
