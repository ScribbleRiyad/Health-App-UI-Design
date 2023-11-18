import 'package:flutter/material.dart';
import 'package:heath_app/presentation/splash_screen/splash_screen.dart';
import 'package:heath_app/presentation/login_screen/login_screen.dart';
import 'package:heath_app/presentation/signup_screen/signup_screen.dart';
import 'package:heath_app/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:heath_app/presentation/dr_list_screen/dr_list_screen.dart';
import 'package:heath_app/presentation/dr_details_screen/dr_details_screen.dart';
import 'package:heath_app/presentation/book_an_appointment_screen/book_an_appointment_screen.dart';
import 'package:heath_app/presentation/chat_screen/chat_screen.dart';
import 'package:heath_app/presentation/settigns_screen/settigns_screen.dart';
import 'package:heath_app/presentation/pharmacy_screen/pharmacy_screen.dart';
import 'package:heath_app/presentation/drug_details_screen/drug_details_screen.dart';
import 'package:heath_app/presentation/article_screen/article_screen.dart';
import 'package:heath_app/presentation/cart_screen/cart_screen.dart';
import 'package:heath_app/presentation/ambulance_screen/ambulance_screen.dart';
import 'package:heath_app/presentation/schedule_tab_container_screen/schedule_tab_container_screen.dart';
import 'package:heath_app/presentation/message_tab_container_screen/message_tab_container_screen.dart';
import 'package:heath_app/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String signupScreen = '/signup_screen';

  static const String dashboardScreen = '/dashboard_screen';

  static const String drListScreen = '/dr_list_screen';

  static const String drDetailsScreen = '/dr_details_screen';

  static const String bookAnAppointmentScreen = '/book_an_appointment_screen';

  static const String chatScreen = '/chat_screen';

  static const String settignsScreen = '/settigns_screen';

  static const String pharmacyScreen = '/pharmacy_screen';

  static const String drugDetailsScreen = '/drug_details_screen';

  static const String articleScreen = '/article_screen';

  static const String cartScreen = '/cart_screen';

  static const String ambulanceScreen = '/ambulance_screen';

  static const String schedulePage = '/schedule_page';

  static const String scheduleTabContainerScreen =
      '/schedule_tab_container_screen';

  static const String messagePage = '/message_page';

  static const String messageTabContainerScreen =
      '/message_tab_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    loginScreen: (context) => LoginScreen(),
    signupScreen: (context) => SignupScreen(),
    dashboardScreen: (context) => DashboardScreen(),
    drListScreen: (context) => DrListScreen(),
    drDetailsScreen: (context) => DrDetailsScreen(),
    bookAnAppointmentScreen: (context) => BookAnAppointmentScreen(),
    chatScreen: (context) => ChatScreen(),
    settignsScreen: (context) => SettignsScreen(),
    pharmacyScreen: (context) => PharmacyScreen(),
    drugDetailsScreen: (context) => DrugDetailsScreen(),
    articleScreen: (context) => ArticleScreen(),
    cartScreen: (context) => CartScreen(),
    ambulanceScreen: (context) => AmbulanceScreen(),
    scheduleTabContainerScreen: (context) => ScheduleTabContainerScreen(),
    messageTabContainerScreen: (context) => MessageTabContainerScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
