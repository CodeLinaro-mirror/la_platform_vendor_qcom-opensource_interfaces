/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

/**
 * @file ADCCallbackSystemEvents.aidl
 * @brief Struct for the different system callback events for ambient data capture.
 *
 * This struct contains the different system callback events with system event command type and
 * optional event configurations blob for the ambient data capture system callback event.
 */
package vendor.qti.hardware.qacs.ambientdatacapture;

@VintfStability
/**
 * @struct AmbientDataCaptureCallbackSystemEvents
 */
parcelable ADCCallbackSystemEvents {
    @Backing(type="int") @VintfStability
    enum EventSystemCommandType {
        INVALID = 0,
        POWER_STATE_CHANGE = 1,
        HARDWARE_RESET = 2,
        HOT_PLUG = 3,
    }

    /**
     * @brief event system command type
     */
    EventSystemCommandType eventSystemCommandType;

    /**
     * @brief vector of bytes representing the data capture system callback event's
     * configurations for one of the EventSystemCommandType.
     */
    @nullable byte[] eventSystemConfigsBlob;
}
