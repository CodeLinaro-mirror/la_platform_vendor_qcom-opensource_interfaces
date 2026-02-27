/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 *//**
 * @file ADCAlgoConfigs.aidl
 * @brief Struct for the different algorithm configurations
 * control of the ambient data capture.
 *
 * This struct contains the different configuration commands
 * and algorithm configuration types for the data capture algorithms.
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
parcelable ADCAlgoConfigs {
  vendor.qti.hardware.qacs.ambientdatacapture.ADCAlgoConfigs.AlgoConfigType algoConfigType;
  vendor.qti.hardware.qacs.ambientdatacapture.ADCAlgoConfigs.AlgoConfigCommandType algoConfigCommandType;
  @nullable byte[] algoConfigsBlob;
  @Backing(type="int") @VintfStability
  enum AlgoConfigType {
    INVALID = 0,
    SMART_SEL = 1,
  }
  @Backing(type="int") @VintfStability
  enum AlgoConfigCommandType {
    INIT = 0,
    RECONFIG = 1,
    ENQUEUE = 2,
    FLUSH_CONFIG = 3,
    FLUSH_ALL = 4,
    DELETE_CONFIG = 5,
    DELETE_ALL = 6,
    DEINIT = 7,
  }
}
