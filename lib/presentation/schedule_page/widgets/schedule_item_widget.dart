import 'package:flutter/material.dart';
import 'package:heath_app/core/app_export.dart';
import 'package:heath_app/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class ScheduleItemWidget extends StatelessWidget {
  ScheduleItemWidget({
    Key? key,
    this.onTapCancel,
    this.onTapReschedule,
  }) : super(
          key: key,
        );

  VoidCallback? onTapCancel;

  VoidCallback? onTapReschedule;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(right: 8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 4.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_dr_marcus_horizon".tr,
                        style: CustomTextStyles.titleMedium18,
                      ),
                      SizedBox(height: 4.v),
                      Text(
                        "lbl_chardiologist".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse27image46x46,
                  height: 46.adaptSize,
                  width: 46.adaptSize,
                  radius: BorderRadius.circular(
                    23.h,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25.v),
          Padding(
            padding: EdgeInsets.only(right: 45.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCalendarOnprimary,
                  height: 15.adaptSize,
                  width: 15.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text(
                    "lbl_26_06_2021".tr,
                    style: CustomTextStyles.labelLargeOnPrimary,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgSearchOnprimary,
                  height: 15.adaptSize,
                  width: 15.adaptSize,
                  margin: EdgeInsets.only(left: 15.h),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text(
                    "lbl_10_30_am".tr,
                    style: CustomTextStyles.labelLargeOnPrimary,
                  ),
                ),
                Container(
                  height: 6.adaptSize,
                  width: 6.adaptSize,
                  margin: EdgeInsets.only(
                    left: 12.h,
                    top: 5.v,
                    bottom: 4.v,
                  ),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.errorContainer,
                    borderRadius: BorderRadius.circular(
                      3.h,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text(
                    "lbl_confirmed".tr,
                    style: CustomTextStyles.labelLargeOnPrimary,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CustomElevatedButton(
                  text: "lbl_cancel".tr,
                  margin: EdgeInsets.only(right: 7.h),
                  buttonStyle: CustomButtonStyles.fillGray,
                  buttonTextStyle: CustomTextStyles.titleSmallBold,
                  onPressed: () {
                    onTapCancel!.call();
                  },
                ),
              ),
              Expanded(
                child: CustomElevatedButton(
                  text: "lbl_reschedule".tr,
                  margin: EdgeInsets.only(left: 7.h),
                  onPressed: () {
                    onTapReschedule!.call();
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
