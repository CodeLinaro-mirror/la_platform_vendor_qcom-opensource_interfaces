/*
 * Copyright (c) 2021 The Linux Foundation. All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are
 * met:
 *  * Redistributions of source code must retain the above copyright
 *      notice, this list of conditions and the following disclaimer.
 *  * Redistributions in binary form must reproduce the above
 *    copyright notice, this list of conditions and the following
 *    disclaimer in the documentation and/or other materials provided
 *    with the distribution.
 *  * Neither the name of The Linux Foundation nor the names of its
 *    contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
 * BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
 * BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
 * OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
 * IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
/*
 * Changes from Qualcomm Technologies, Inc. are provided under the following license:
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

/**
 * @file IAmbientDataCapture.aidl
 * @brief Interface for Ambient Data Logging operations
 *
 * This file contains the interface definitions for various
 * ambient data logging operations.
 */
package vendor.qti.hardware.qacs.ambientdatacapture;

import android.hardware.common.NativeHandle;
import vendor.qti.hardware.display.config.Attributes;
import vendor.qti.hardware.display.config.DisplayType;
import vendor.qti.hardware.qacs.ambientdatacapture.IAmbientDataCaptureCallback;
import vendor.qti.hardware.qacs.ambientdatacapture.ADCDisplayConfigs;
import vendor.qti.hardware.qacs.ambientdatacapture.ADCAlgoConfigs;

@VintfStability
/**
 * @interface IAmbientDataCapture
 */
interface IAmbientDataCapture {

    /**
     * @brief Query the config index of a given display type.
     *
     * @param[in] dpy display type
     *
     * @return config index of the display type
     */
    int getActiveConfig(in DisplayType dpy);

    /**
     * @brief Query the display attributes of the specified config index.
     *
     * @param configIndex config index
     * @param dpy display type
     *
     * @return attributes display attributes
     */
    Attributes getDisplayAttributes(in int configIndex, in DisplayType dpy);

    /**
     * @brief Set the algorithm configurations that need to be performed on the
     * captured data. In display captured data will be CWB buffer. Client can specify
     * the algorithm type and then the algorithm control type to perform on that algorithm
     * with the configuration. This API is called before invoking the data capture.
     *
     * @param algoConfigs contains algorithm configuration type, control type
     * and the corresponding configurations
     *
     * @return error is NONE upon success
     */
    void setAlgoConfig(in ADCAlgoConfigs algoConfigs);

    /**
     * @brief Set the output buffer to be filled with the contents of the next
     * composition performed for this display. Client can specify cropping
     * rectangle for the partial concurrent writeback.
     * Buffer must be ready for writeback before this API is called.
     * If hardware protected content is displayed in next composition cycle,
     * CWB output buffer will be returned as failure in callback and without
     * any change in buffer.
     *
     * @param callback registered callback for IAmbientDataCapture
     * @param captureConfigs configs like display id, rect, cwbControlFlag and buffer
     * where concurrent writeback output shall be written.
     *
     * @return error is NONE upon success
     */
    void captureOutputBuffer(in IAmbientDataCaptureCallback callback,
                             in ADCDisplayConfigs captureConfigs);
}
