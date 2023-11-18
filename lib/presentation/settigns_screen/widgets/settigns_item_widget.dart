import 'package:flutter/material.dart';
import 'package:heath_app/core/app_export.dart';

// ignore: must_be_immutable
class SettignsItemWidget extends StatelessWidget {
  const SettignsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 63.h,
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLocationPrimary,
            height: 32.adaptSize,
            width: 32.adaptSize,
          ),
          SizedBox(height: 5.v),
          Text(
            "lbl_heart_rate".tr,
            style: CustomTextStyles.labelMediumCyan100,
          ),
          SizedBox(height: 4.v),
          Text(
            "lbl_215bpm".tr,
            style: CustomTextStyles.titleMediumPrimary_1,
          ),
        ],
      ),
    );
  }
}
