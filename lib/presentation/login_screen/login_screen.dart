import 'package:flutter/material.dart';
import 'package:heath_app/core/app_export.dart';
import 'package:heath_app/widgets/custom_elevated_button.dart';
import 'package:heath_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.cyan300,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.h, vertical: 35.v),
                    child: Column(children: [
                      SizedBox(height: 70.v),
                      _buildPageTitle(context),
                      SizedBox(height: 32.v),
                      CustomTextFormField(
                          controller: emailController,
                          hintText: "lbl_your_email".tr,
                          textInputType: TextInputType.emailAddress,
                          prefix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgMail,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize)),
                          prefixConstraints: BoxConstraints(maxHeight: 48.v)),
                      SizedBox(height: 8.v),
                      CustomTextFormField(
                          controller: passwordController,
                          hintText: "lbl_password".tr,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          prefix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgLock,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize)),
                          prefixConstraints: BoxConstraints(maxHeight: 48.v),
                          obscureText: true),
                      SizedBox(height: 27.v),
                      CustomElevatedButton(
                          text: "lbl_sign_in".tr,
                          buttonStyle: CustomButtonStyles.fillPrimary,
                          buttonTextStyle: CustomTextStyles.titleSmallTeal300,
                          onPressed: () {
                            onTapSignIn(context);
                          }),
                      SizedBox(height: 24.v),
                      Text("msg_forgot_password".tr,
                          style: CustomTextStyles.labelLargePrimaryBold_1),
                      Spacer(),
                      GestureDetector(
                          onTap: () {
                            onTapTxtDonthaveanaccount(context);
                          },
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_don_t_have_an_account2".tr,
                                    style: CustomTextStyles.bodySmallPrimary_1),
                                TextSpan(text: " "),
                                TextSpan(
                                    text: "lbl_register".tr,
                                    style:
                                        CustomTextStyles.labelLargePrimaryBold)
                              ]),
                              textAlign: TextAlign.left))
                    ])))));
  }

  /// Section Widget
  Widget _buildPageTitle(BuildContext context) {
    return Column(children: [
      CustomImageView(
          imagePath: ImageConstant.imgHiDocLogo42x115,
          height: 42.v,
          width: 115.h),
      SizedBox(height: 26.v),
      Text("msg_welcome_to_hidoc".tr,
          style: CustomTextStyles.titleMediumOnPrimaryContainer),
      SizedBox(height: 12.v),
      Text("msg_sign_in_to_continue".tr,
          style: CustomTextStyles.labelLargeGray50)
    ]);
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapSignIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signupScreen);
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapTxtDonthaveanaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signupScreen);
  }
}
