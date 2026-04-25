/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 *//**
 * @file ADCCallbackSystemEvents.aidl
 * @brief Struct for the different system callback events for ambient data capture.
 *
 * This struct contains the different system callback events with system event command type and
 * optional event configurations blob for the ambient data capture system callback event.
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
parcelable ADCCallbackSystemEvents {
  vendor.qti.hardware.qacs.ambientdatacapture.ADCCallbackSystemEvents.EventSystemCommandType eventSystemCommandType;
  @nullable byte[] eventSystemConfigsBlob;
  @Backing(type="int") @VintfStability
  enum EventSystemCommandType {
    INVALID = 0,
    POWER_STATE_CHANGE = 1,
    HARDWARE_RESET = 2,
    HOT_PLUG = 3,
  }
}
