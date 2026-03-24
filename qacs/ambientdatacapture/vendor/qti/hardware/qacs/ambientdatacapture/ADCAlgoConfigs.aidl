/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

/**
 * @file ADCAlgoConfigs.aidl
 * @brief Struct for the different algorithm configurations
 * control of the ambient data capture.
 *
 * This struct contains the different configuration commands
 * and algorithm configuration types for the data capture algorithms.
 */
package vendor.qti.hardware.qacs.ambientdatacapture;

@VintfStability
/**
 * @struct AmbientDataCaptureAlgoConfigs
 */
parcelable ADCAlgoConfigs {
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

    /**
     * @brief algorithm configuration type
     */
    AlgoConfigType algoConfigType;

    /**
     * @brief algorithm configuration command type
     */
    AlgoConfigCommandType algoConfigCommandType;

    /**
     * @brief vector of bytes representing the data capture algorithm
     * configurations for one of the AlgoConfigType and AlgoConfigCommandType.
     */
    @nullable byte[] algoConfigsBlob;
}
