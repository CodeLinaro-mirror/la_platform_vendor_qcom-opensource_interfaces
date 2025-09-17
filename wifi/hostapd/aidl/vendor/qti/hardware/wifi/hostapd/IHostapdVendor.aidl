/* Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 *
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.hardware.wifi.hostapd;

import vendor.qti.hardware.wifi.hostapd.IHostapdVendorCallback;

/**
 * Top-level vendor interface for managing SoftAPs.
 */
@VintfStability
interface IHostapdVendor {

    /**
     * List active interfaces in hostapd.
     * @return Active interface names.
     *
     * @throws ServiceSpecificException with one of the following values:
     *     |HostapdVendorStatusCode.FAILURE_UNKNOWN|,
     */
    String[] listVendorInterfaces();

    /**
     * Register for vendor callbacks from the hostapd service.
     *
     * These callbacks are invoked for global events that are not specific
     * to any interface or network. Registration of multiple callback
     * objects is supported. These objects must be deleted when the corresponding
     * client process is dead.
     *
     * @param callback An instance of the |IHostapdVendorCallback| AIDL interface
     *     object.
     * @throws ServiceSpecificException with one of the following values:
     *     |HostapdVendorStatusCode.FAILURE_UNKNOWN|
     */
    void registerHostapdVendorCallback(in IHostapdVendorCallback callback);

    /**
     * Send hostapd_cli like commands to hostapd.
     * @param iface Name of the interface.
     * @param cmd Command needs to be executed.
     * @return reply Hostapd_cli like reply string.
     * @throws ServiceSpecificException with one of the following values:
     *     |HostapdVendorStatusCode.FAILURE_UNKNOWN|,
     *     |HostapdVendorStatusCode.FAILURE_IFACE_UNKNOWN|
     */
    String doDriverCmd(in String iface, in String cmd);
}
