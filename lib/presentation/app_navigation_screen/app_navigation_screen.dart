import 'package:flutter/material.dart';
import 'package:heath_app/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Signup".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signupScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Dashboard".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.dashboardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Dr List".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.drListScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Dr Details".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.drDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Book an appointment".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bookAnAppointmentScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Chat".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.chatScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Settigns".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.settignsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Pharmacy".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.pharmacyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Drug Details".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.drugDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Article".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.articleScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Cart".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.cartScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "ambulance".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.ambulanceScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Schedule - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.scheduleTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Message - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.messageTabContainerScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
