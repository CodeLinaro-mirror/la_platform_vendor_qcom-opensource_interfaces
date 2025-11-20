/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.hardware.camera.aon;

/**
 * The delivery mode of event detection
 */
@VintfStability
@Backing(type="int")
enum DeliveryMode {
    /**
     * Detection is triggered to run based on motion detected by sensor.
     */
    MotionBased = 0,
    /**
     * Detection is triggered to run periodically according to
     * the value of deliveryPeriodMs set by client during RegisterClient.
     */
    TimeBased = 1,
}
