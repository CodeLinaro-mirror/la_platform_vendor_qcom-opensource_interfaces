/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */
package vendor.qti.hardware.camera.aon;
@VintfStability
parcelable CameraRectangle {

  /**
   * Top left coordinate of the rectangle
   */
  int x;
  int y;

  /**
   * Width & Height of the rectangle
   */
  int width;
  int height;
}
