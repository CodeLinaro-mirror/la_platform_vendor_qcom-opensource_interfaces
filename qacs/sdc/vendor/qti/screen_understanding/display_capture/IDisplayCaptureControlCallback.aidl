/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.screen_understanding.display_capture;

import vendor.qti.screen_understanding.display_capture.Status;

@VintfStability
interface IDisplayCaptureControlCallback {

    /**
     * Called when the capture session is ready for use.
     */
    void onReady(long sessionId);

    /**
     * Called when an error occurs in the capture session.
     *
     * @param sessionId Control session identifier.
     * @param status    Error status containing code and message.
     */
    void onError(long sessionId, in Status status);

    /**
     * Called when the capture session has been stopped.
     */
    void onStopped(long sessionId);

    /**
     * Called when the capture configuration has been updated.
     */
    void onConfigUpdated(long sessionId);
}
