/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.screen_understanding.display_capture;

import vendor.qti.screen_understanding.display_capture.BufferInfo;
import vendor.qti.screen_understanding.display_capture.Status;
import vendor.qti.screen_understanding.display_capture.DeleteConfig;


/**
 * Callback for receiving captured buffers and metadata, and generic events.
 */
@VintfStability
interface IDisplayCaptureDataCallback {

	/**
	 * Called when new buffers are available.
	 *
	 * @param buffers Array of BufferInfo structures, each containing
	 *                one or more BufferEntry objects (FD + typed metadata).
	 */
	void onBufferReceived(in BufferInfo[] buffers);

    /**
     * Called when the vendor service requests deletion of previously
     * delivered buffers or capture artifacts.
     *
     * @param deleteConfig describing what should be deleted.
     */
    void onDeleteRequest(in DeleteConfig deleteConfig);

    /**
     * Called when the subscription is successfully established.
     */
    void onSubscribed(long sessionId);

    /**
     * Called when the subscription is terminated.
     */
    void onUnsubscribed(long sessionId);

    /**
     * Called when a subscription‑related error occurs.
     */
    void onError(long sessionId, in Status status);
}
