/* Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 *
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.hardware.wifi.hostapd;
import vendor.qti.hardware.wifi.hostapd.VendorApInfo;
/**
 * Top-level vendor callback interface for managing SoftAPs.
 */
@VintfStability
interface IHostapdVendorCallback {

    /**
     * Invoked when vendor event is triggered, and returned event info.
     *
     * @param ifaceName Name of the interface.
     * @param event_str Event info.
     */
    oneway void onCtrlEvent(String ifaceName, String event_str);

    /**
     * Invoked when AP instance added.
     *
     * @param apInfo Including AP iface name and instance name.
     */
    oneway void onApInstanceInfoChanged(in VendorApInfo apInfo);

    /**
     * Invoked when AP instance got removed.
     *
     * @param ifaceName Name of the interface.
     * @param instanceName Name of the instance got removed.
     */
    oneway void onFailure(in String ifname, in String instanceName);

}
