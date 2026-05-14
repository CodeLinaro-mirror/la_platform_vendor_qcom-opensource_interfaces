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
 * @file IAmbientDataCaptureCallback.aidl
 * @brief Interface for data capture callbacks
 *
 * This interface provides callback methods to notify various data capture events
 * such as concurrent writeback completion of display, algorithm or system events.
 */
package vendor.qti.hardware.qacs.ambientdatacapture;

import android.hardware.common.NativeHandle;
import vendor.qti.hardware.qacs.ambientdatacapture.ADCCallbackEvents;

@VintfStability
/**
 * @interface IAmbientDataCaptureCallback
 */
interface IAmbientDataCaptureCallback {
    /**
     * @brief Send notification when ambient data capture of display completes.
     *
     * @param error result of the CWB process
     * @param buffer buffer for concurrent writeback
     * @return none
     */
    oneway void notifyOutputBufferDone(in int error, in NativeHandle buffer);

    /**
     * @brief Send an event notification when ambient data capture process
     * encounters any errors or changes.
     *
     * @param event result of the data capture process
     * @return none
     */
    oneway void notifyEvent(in ADCCallbackEvents event);
}
