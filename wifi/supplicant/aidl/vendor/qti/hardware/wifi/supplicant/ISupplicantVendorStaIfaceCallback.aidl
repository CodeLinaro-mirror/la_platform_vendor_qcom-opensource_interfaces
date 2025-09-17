/* Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries. 
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
