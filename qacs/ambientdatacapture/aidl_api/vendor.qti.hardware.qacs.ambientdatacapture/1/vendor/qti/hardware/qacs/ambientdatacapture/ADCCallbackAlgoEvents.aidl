/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 *//**
 * @file ADCCallbackAlgoEvents.aidl
 * @brief Struct for the different algorithm callback events for ambient data capture.
 *
 * This struct contains the different algorithm callback events with algortihm command type and
 * optional event configurations blob for the ambient data capture algorithm callback event.
 */
///////////////////////////////////////////////////////////////////////////////
// THIS FILE IS IMMUTABLE. DO NOT EDIT IN ANY CASE.                          //
///////////////////////////////////////////////////////////////////////////////

// This file is a snapshot of an AIDL file. Do not edit it manually. There are
// two cases:
// 1). this is a frozen version file - do not edit this in any case.
// 2). this is a 'current' file. If you make a backwards compatible change to
//     the interface (from the latest frozen version), the build system will
//     prompt you to update this file with `m <name>-update-api`.
//
// You must not make a backward incompatible change to any AIDL file built
// with the aidl_interface module type with versions property set. The module
// type is used to build AIDL files in a way that they can be used across
// independently updatable components of the system. If a device is shipped
// with such a backward incompatible change, it has a high risk of breaking
// later when a module using the interface is updated, e.g., Mainline modules.

package vendor.qti.hardware.qacs.ambientdatacapture;
@VintfStability
parcelable ADCCallbackAlgoEvents {
  vendor.qti.hardware.qacs.ambientdatacapture.ADCCallbackAlgoEvents.EventAlgoCommandType eventAlgoCommandType;
  @nullable byte[] eventAlgoConfigsBlob;
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
}
