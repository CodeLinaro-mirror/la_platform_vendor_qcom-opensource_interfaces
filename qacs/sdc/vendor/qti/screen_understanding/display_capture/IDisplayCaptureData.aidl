/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.screen_understanding.display_capture;

import vendor.qti.screen_understanding.display_capture.IDisplayCaptureDataCallback;
import vendor.qti.screen_understanding.display_capture.ReceiverConfig;
import vendor.qti.screen_understanding.display_capture.Status;

/**
 * Data‑path interface for subscribing to captured buffers.
 */
@VintfStability
interface IDisplayCaptureData {

    /**
     * Subscribe to receive captured buffers.
     *
     * @param callback Callback for buffer delivery and events.
     * @param config   Receiver configuration.
     * @return sessionId Unique subscription identifier on success; -1 on error.
     */
    long subscribe(in IDisplayCaptureDataCallback callback,
                       in ReceiverConfig config);

    /**
     * Update configuration for an existing data subscription.
     *
     * @param sessionId Subscription identifier.
     * @param config    Updated receiver configuration.
     * @return Status structure containing success/error information.
     */
    Status updateReceiverConfig(long sessionId, in ReceiverConfig config);

    /**
     * Unsubscribe from receiving buffers.
     *
     * @param sessionId Subscription identifier.
     * @return Status structure containing success/error information.
     */
    Status unsubscribe(long sessionId);
}
