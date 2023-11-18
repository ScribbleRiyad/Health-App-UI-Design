import 'package:flutter/material.dart';
import 'package:heath_app/core/app_export.dart';

// ignore: must_be_immutable
class DrlistItemWidget extends StatelessWidget {
  const DrlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgProfilePic,
            height: 111.adaptSize,
            width: 111.adaptSize,
            radius: BorderRadius.circular(
              12.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              top: 7.v,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_dr_marcus_horizon".tr,
                  style: CustomTextStyles.titleMedium18,
                ),
                SizedBox(height: 7.v),
                Text(
                  "lbl_chardiologist".tr,
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 13.v),
                Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgStar,
                        height: 13.adaptSize,
                        width: 13.adaptSize,
                        margin: EdgeInsets.only(bottom: 1.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          "lbl_4_72".tr,
                          style: CustomTextStyles.labelLargeCyan300,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgLocation,
                      height: 13.adaptSize,
                      width: 13.adaptSize,
                      margin: EdgeInsets.only(bottom: 2.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Text(
                        "lbl_800m_away".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
