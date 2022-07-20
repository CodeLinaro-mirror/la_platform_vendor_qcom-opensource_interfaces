/* Copyright (c) 2022 Qualcomm Innovation Center, Inc. All rights reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.hardware.wifi.supplicant;

/**
 * Vendor StaIface Interface
 */
@VintfStability
interface ISupplicantVendorStaIfaceCallback {
    /**
     * run Driver Commands
     *
     * @param ifaceName Name of the interface
     * @param eventStr Event Information
     */
    oneway void onCtrlEvent(String ifaceName, String eventStr);
}
