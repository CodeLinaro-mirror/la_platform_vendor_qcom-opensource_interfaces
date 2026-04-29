/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.qaior.screen_understanding;

import vendor.qti.qaior.screen_understanding.Status;

@VintfStability
interface IScreenUnderstandingCallback {
    /**
     * Called when the capture session is ready for use.
     */
    void onStart(long sessionId);

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
