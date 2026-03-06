/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.screen_understanding.display_capture;

/**
 * Machine‑readable status codes for capture operations.
 */
@VintfStability
enum StatusCode {
    OK = 0,
    INVALID_SESSION = 1,
    INVALID_CONFIG = 2,
    PERMISSION_DENIED = 3,
    CAPTURE_FAILED = 4,
    UNSUPPORTED_OPERATION = 5,
    INTERNAL_ERROR = 6,
}
