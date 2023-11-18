import 'package:flutter/material.dart';
import 'package:heath_app/core/app_export.dart';

// ignore: must_be_immutable
class Drugs1ItemWidget extends StatelessWidget {
  const Drugs1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 118.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 6.h,
            vertical: 7.v,
          ),
          decoration: AppDecoration.outlineTeal.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 16.v),
              CustomImageView(
                imagePath: ImageConstant.imgDrugThumbnail1,
                height: 50.adaptSize,
                width: 50.adaptSize,
                radius: BorderRadius.circular(
                  25.h,
                ),
                alignment: Alignment.center,
              ),
              SizedBox(height: 27.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Text(
                  "lbl_obh_combi".tr,
                  style: CustomTextStyles.labelLargeOnPrimaryContainer,
                ),
              ),
              SizedBox(height: 1.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Text(
                  "lbl_75ml".tr,
                  style: theme.textTheme.labelMedium,
                ),
              ),
              SizedBox(height: 4.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 2.v),
                      child: Text(
                        "lbl_9_99".tr,
                        style: CustomTextStyles.titleSmallOnPrimaryContainer,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgPlus,
                      height: 18.adaptSize,
                      width: 18.adaptSize,
                      margin: EdgeInsets.only(left: 45.h),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
