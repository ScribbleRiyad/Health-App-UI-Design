import 'package:flutter/material.dart';
import 'package:heath_app/core/app_export.dart';
import 'package:heath_app/presentation/message_tab_container_screen/message_tab_container_screen.dart';
import 'package:heath_app/presentation/schedule_page/schedule_page.dart';
import 'package:heath_app/presentation/schedule_tab_container_screen/schedule_tab_container_screen.dart';
import 'package:heath_app/presentation/settigns_screen/settigns_screen.dart';
import 'package:heath_app/widgets/app_bar/appbar_title.dart';
import 'package:heath_app/widgets/app_bar/custom_app_bar.dart';
import 'package:heath_app/widgets/custom_bottom_bar.dart';

class ScheduleTabContainerScreen extends StatefulWidget {
  const ScheduleTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ScheduleTabContainerScreenState createState() =>
      ScheduleTabContainerScreenState();
}

class ScheduleTabContainerScreenState extends State<ScheduleTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 20.v),
              _buildTabview(context),
              SizedBox(
                height: 603.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    SchedulePage(),
                    SchedulePage(),
                    SchedulePage(),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 47.v,
      title: AppbarTitle(
        text: "lbl_schedule".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        Container(
          height: 29.v,
          width: 20.h,
          margin: EdgeInsets.fromLTRB(14.h, 12.v, 14.h, 6.v),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgMoreIcon,
                height: 16.v,
                width: 4.h,
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(
                  left: 10.h,
                  top: 13.v,
                  right: 6.h,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgComponent5,
                height: 20.adaptSize,
                width: 20.adaptSize,
                alignment: Alignment.center,
                margin: EdgeInsets.only(bottom: 9.v),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 46.v,
      width: 335.h,
      decoration: BoxDecoration(
        color: appTheme.gray5001,
        borderRadius: BorderRadius.circular(
          8.h,
        ),
      ),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.primary,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: theme.colorScheme.onPrimary,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        indicator: BoxDecoration(
          color: appTheme.cyan300,
          borderRadius: BorderRadius.circular(
            8.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_upcoming".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_completed".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_canceled".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return "/";
      case BottomBarEnum.Messages:
        return AppRoutes.messageTabContainerScreen;
      case BottomBarEnum.Appointment:
        return AppRoutes.scheduleTabContainerScreen;
      case BottomBarEnum.Profile:
        return AppRoutes.settignsScreen;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.messageTabContainerScreen:
        return MessageTabContainerScreen();
      case AppRoutes.scheduleTabContainerScreen:
        return ScheduleTabContainerScreen();
      case AppRoutes.settignsScreen:
        return SettignsScreen();
      default:
        return DefaultWidget();
    }
  }
}
