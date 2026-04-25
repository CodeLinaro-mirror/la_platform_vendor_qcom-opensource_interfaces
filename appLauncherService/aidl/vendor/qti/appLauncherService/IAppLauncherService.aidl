/**
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.appLauncherService;

@VintfStability
interface IAppLauncherService {
    void startService(String pkgName, String serviceName);
    void stopService(String pkgName, String serviceName);
}