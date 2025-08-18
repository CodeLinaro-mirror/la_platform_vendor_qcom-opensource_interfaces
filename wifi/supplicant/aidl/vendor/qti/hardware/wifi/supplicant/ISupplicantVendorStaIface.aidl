/* Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 *
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.hardware.wifi.supplicant;
import vendor.qti.hardware.wifi.supplicant.ISupplicantVendorStaIfaceCallback;

/**
 * Vendor StaIface Interface
 */
@VintfStability
interface ISupplicantVendorStaIface {
    /**
     * run Driver Commands
     *
     * @param command Driver Command
     * @return status supplicant status/reply for driver command
     * @throws ServiceSpecificException with one of the following values:
     *         |SupplicantVendorStatusCode.FAILURE_UNKNOWN|
     */
    String doDriverCmd(in String command);

    /**
     * Register for vendor callbacks from this interface.
     *
     * These callbacks are invoked for events that are specific to this interface.
     * Registration of multiple callback objects is supported. These objects must
     * be automatically deleted when the corresponding client process is dead or
     * if this interface is removed.
     *
     * @param callback An instance of the |ISupplicantVendorStaIfaceCallback| AIDL
     *        interface object.
     * @throws ServiceSpecificException with one of the following values:
     *         |SupplicantVendorStatusCode.FAILURE_UNKNOWN|,
     *         |SupplicantVendorStatusCode.FAILURE_IFACE_INVALID|
     */
    void registerSupplicantVendorStaIfaceCallback(in ISupplicantVendorStaIfaceCallback callback);
}
