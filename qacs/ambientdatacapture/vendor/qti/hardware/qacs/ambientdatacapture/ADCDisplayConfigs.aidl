/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

/**
 * @file ADCDisplayConfigs.aidl
 * @brief Struct for the ambient data capture configurations for display
 *
 * This struct contains the different configurations for the display  capture
 * such as display type, capturing rect.
 */
package vendor.qti.hardware.qacs.ambientdatacapture;

import vendor.qti.hardware.display.config.Rect;
import android.hardware.common.NativeHandle;

@VintfStability
/**
 * @struct AmbientDataCaptureDisplayConfigs
 */
parcelable ADCDisplayConfigs {
    /**
     * @brief display id where concurrent writeback shall be captured
     */
    int dispID;

    /**
     * @brief cropping rectangle which shall be applied on blended output
     */
    Rect rectROI;

    /**
     * @brief Indicates whether to capture LM/DSPP/Demura output or
     * control refresh strategy
     */
    int captureControlFlag;

    /**
     * @brief buffer where concurrent writeback output shall be written
     */
    NativeHandle buffer;

    /**
     * @brief downscaled rectangle which shall be applied on output
     */
    Rect downscaleRect;
}
