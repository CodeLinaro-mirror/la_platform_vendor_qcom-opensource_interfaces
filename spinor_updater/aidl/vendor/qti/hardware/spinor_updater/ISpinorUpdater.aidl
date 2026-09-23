// Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
// SPDX-License-Identifier: BSD-3-Clause-Clear

package vendor.qti.hardware.spinor_updater;

/**
 * Interface for updating SPINOR NOR flash firmware partitions for a target
 * A/B slot as part of an OTA (Over-The-Air) update.
 */
@VintfStability
interface ISpinorUpdater {
    /**
     * doSpinorUpdate() writes the SPINOR firmware images described in the
     * provided archive to the given target slot.
     *
     * If the on-flash content for a partition already matches the expected
     * content, that partition is skipped. The update is therefore idempotent.
     *
     * @param slotSuffix  Target slot suffix. Must be "_a" or "_b".
     *
     * @param archivePath Absolute path to the SPINOR OTA archive (zip file)
     *                    readable by the HAL.
     *
     * @throws ServiceSpecificException on failure with a diagnostic message.
     */
    void doSpinorUpdate(in String slotSuffix, in String archivePath);
}
