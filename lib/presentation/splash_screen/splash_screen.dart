import 'package:flutter/material.dart';
import 'package:heath_app/core/app_export.dart';
import 'package:heath_app/widgets/custom_elevated_button.dart';
import 'package:heath_app/widgets/custom_outlined_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.cyan300,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 46.v),
                child: Column(children: [
                  Spacer(),
                  CustomImageView(
                      imagePath: ImageConstant.imgHiDocLogo,
                      height: 368.v,
                      width: 338.h),
                  SizedBox(height: 87.v),
                  CustomOutlinedButton(
                      text: "lbl_login".tr,
                      margin: EdgeInsets.only(right: 6.h),
                      onPressed: () {
                        onTapLogin(context);
                      }),
                  SizedBox(height: 15.v),
                  CustomElevatedButton(
                      text: "lbl_sign_up".tr,
                      margin: EdgeInsets.only(right: 6.h),
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      buttonTextStyle: CustomTextStyles.titleSmallTeal300,
                      onPressed: () {
                        onTapSignUp(context);
                      })
                ]))));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signupScreen);
  }
}
