/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.qaior.screen_understanding;

import vendor.qti.qaior.screen_understanding.IScreenUnderstandingCallback;
import vendor.qti.qaior.screen_understanding.CaptureConfig;
import vendor.qti.qaior.screen_understanding.DeleteConfig;

@VintfStability
interface IScreenUnderstandingService {
    /**
     * Start a capture session with the given configuration.
     *
     * @param config capture configuration
     * @param callback callback for events
     */
    void startCapture(in CaptureConfig config, in IScreenUnderstandingCallback callback);

    /**
     * Update configuration for an ongoing capture session.
     *
     * @param sessionId  session identifier.
     * @param config configuration for update.
     */
    void updateCaptureConfig(long sessionId, in CaptureConfig config);

    /**
     * Stop an ongoing capture session.
     *
     * @param sessionId  session identifier.
     */
    void stopCapture(long sessionId);

    /**
     * Delete a capture session or resource using the given configuration.
     *
     * @param sessionId  session identifier.
     * @param config configuration for deletion.
     */
    void deleteCapture(long sessionId, in DeleteConfig config);
}
