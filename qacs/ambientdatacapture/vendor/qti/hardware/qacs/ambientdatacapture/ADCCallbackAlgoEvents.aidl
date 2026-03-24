/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

/**
 * @file ADCCallbackAlgoEvents.aidl
 * @brief Struct for the different algorithm callback events for ambient data capture.
 *
 * This struct contains the different algorithm callback events with algortihm command type and
 * optional event configurations blob for the ambient data capture algorithm callback event.
 */
package vendor.qti.hardware.qacs.ambientdatacapture;

@VintfStability
/**
 * @struct AmbientDataCaptureCallbackAlgoEvents
 */
parcelable ADCCallbackAlgoEvents {
    @Backing(type="int") @VintfStability
    enum EventAlgoCommandType {
        INVALID = 0,
        INIT = 1,
        RESULT = 2,
        FLUSHED_CONFIG = 3,
        FLUSHED_ALL = 4,
        DELETED_CONFIG = 5,
        DELETED_ALL = 6,
        ERROR_STATE = 7,
        DEINIT = 8,
    }

    /**
     * @brief event algo command type
     */
    EventAlgoCommandType eventAlgoCommandType;

    /**
     * @brief vector of bytes representing the data capture algorithm callback event's
     * configurations for one of the EventAlgoCommandType.
     */
    @nullable byte[] eventAlgoConfigsBlob;
}
