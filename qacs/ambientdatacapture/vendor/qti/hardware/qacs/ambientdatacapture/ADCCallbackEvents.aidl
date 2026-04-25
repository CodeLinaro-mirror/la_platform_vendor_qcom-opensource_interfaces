/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

/**
 * @file ADCCallbackEvents.aidl
 * @brief Struct for the different callback events for ambient data capture.
 *
 * This struct contains the different callback events with event type, command type and
 * optional event configurations blob for the ambient data capture callback event.
 */
package vendor.qti.hardware.qacs.ambientdatacapture;

@VintfStability
/**
 * @struct AmbientDataCaptureCallbackEvents
 */
parcelable ADCCallbackEvents {
    @Backing(type="int") @VintfStability
    enum EventConfigType {
        SYSTEM = 0,
        ALGO_SMART_SEL = 1,
    }

    /**
     * @brief event configuration type
     */
    EventConfigType eventConfigType;

    /**
     * @brief vector of bytes representing the data capture callback event's
     * configurations for one of the EventConfigType.
     */
    @nullable byte[] eventConfigsBlob;
}
