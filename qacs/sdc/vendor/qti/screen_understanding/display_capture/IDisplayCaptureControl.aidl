/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.screen_understanding.display_capture;

import android.os.ParcelFileDescriptor;
import vendor.qti.screen_understanding.display_capture.CaptureConfig;
import vendor.qti.screen_understanding.display_capture.DeleteConfig;
import vendor.qti.screen_understanding.display_capture.Status;
import vendor.qti.screen_understanding.display_capture.CaptureParams;
import vendor.qti.screen_understanding.display_capture.IDisplayCaptureControlCallback;

/**
 * Control‑path interface for managing capture sessions and control operations.
 */
@VintfStability
interface IDisplayCaptureControl {

    /**
     * Create a new control session.
     *
     * @param callback Callback for control events.
     * @param config   Initial capture configuration.
     * @return sessionId Unique control session identifier on success; -1 on failure.
     */
    long createControlSession(in IDisplayCaptureControlCallback callback,
                              in CaptureConfig config);

    /**
     * Update configuration for an existing control session.
     *
     * @param sessionId Control session identifier.
     * @param config    Updated configuration.
     * @return Status structure containing success/error information.
     */
    Status updateControlConfig(long sessionId, in CaptureConfig config);

    /**
     * Trigger a capture event for the given session.
     *
     * @param sessionId  Control session identifier.
     * @param params capture parameters.
     * @return Status structure containing success/error information.
     */
    Status triggerCapture(long sessionId, in CaptureParams params);

    /**
     * Provide a captured buffer via FD when native capture is disabled.
     *
     * @param sessionId  Control session identifier.
     * @param params capture parameters.
     * @param captureFd  File descriptor containing raw image data.
     * @return Status structure containing success/error information.
     */
    Status addCaptureFd(long sessionId,
                        in CaptureParams params,
                        in ParcelFileDescriptor captureFd);

    /**
     * Delete capture or session state based on DeleteConfig.
     *
     * @param sessionId    Control session identifier.
     * @param deleteConfig config to delete the captures based on configuration.
     * @return Status structure containing success/error information.
     */
    Status deleteCapture(long sessionId, in DeleteConfig deleteConfig);

    /**
     * Destroy a control session and release associated resources.
     *
     * @param sessionId Control session identifier.
     * @return Status structure containing success/error information.
     */
    Status destroyControlSession(long sessionId);
}
