/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.qaior.screen_understanding;

/**
 * Machine‑readable status codes for capture operations.
 */
@VintfStability
enum ErrorCode {

    /*
    * For SESSION_NOT_STARTED error code sessionId is -1
    */
    SESSION_NOT_STARTED = 0,
    INVALID_SESSION = 1,
    INVALID_CONFIG = 2,
    PERMISSION_DENIED = 3,
    INTERNAL_ERROR = 4,
}
