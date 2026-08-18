/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.hardware.umd_aidl;

@VintfStability
@Backing(type="int")
enum AudioStatus {
    AUDIO_STATE_INVALID,
    AUDIO_STATE_PLAYBACK,
    AUDIO_STATE_CAPTURE,
    AUDIO_STATE_PLAYBACK_CAPTURE,
    AUDIO_STATE_PAUSED,
}
