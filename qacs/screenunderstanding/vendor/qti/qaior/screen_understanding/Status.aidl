/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.qaior.screen_understanding;

import vendor.qti.qaior.screen_understanding.ErrorCode;

@VintfStability
parcelable Status {
    /**
     * Machine‑readable status code describing the result.
     */
    ErrorCode code;

    /**
     * Optional human‑readable message for debugging or logging.
     */
    @nullable String message;
}
