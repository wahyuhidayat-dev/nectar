// ignore_for_file: constant_identifier_names

import 'package:get/route_manager.dart';
import 'package:nectar/screens/cartscreen.dart';
import 'package:nectar/screens/detailscreen.dart';
import 'package:nectar/screens/explorescreen.dart';
import 'package:nectar/screens/favoritescreen.dart';
import 'package:nectar/screens/homescreen.dart';
import 'package:nectar/screens/loginscreen.dart';
import 'package:nectar/screens/signupscreen.dart';
import 'package:nectar/screens/splashscreenfirst.dart';
import 'package:nectar/screens/splashscreensecond.dart';
import 'package:nectar/screens/userscreen.dart';
import 'package:nectar/utils/bottomnavbar.dart';

class Approutes {
  static const String LOGIN_SCREEN = '/LOGIN';
  static const String HOME_SCREEN = '/HOME_SCREEN';
  static const String BOTTOM_NAVBAR = '/BOTTOM_NAVBAR';
  static const String CART_SCREEN = '/CART_SCREEN';
  static const String SIGN_UP = '/SIGN_UP';
  static const String SPLASH_SCREEN1 = '/SPLASH_SCREEN1';
  static const String SPLASH_SCREEN2 = '/SPLASH_SCREEN2';
  static const String EXPLORE_SCREEN = '/EXPLORE_SCREEN';
  static const String FAVORITE_SCREEN = '/FAVORITE_SCREEN';
  static const String USER_SCREEN = '/USER_SCREEN';
  static const String DETAIL_SCREEN = '/DETAIL_SCREEN';
}

class RoutingClass {
  // ignore: non_constant_identifier_names
  static List<GetPage<dynamic>> LISTPAGE = [
    GetPage(
      name: Approutes.SPLASH_SCREEN1,
      page: () => const SplashScreenFirst(),
    ),
    GetPage(
      name: Approutes.SPLASH_SCREEN2,
      page: () => const SplashScreenSecond(),
    ),
    GetPage(
      name: Approutes.LOGIN_SCREEN,
      page: () => const LoginScreens(),
    ),
    GetPage(
      name: Approutes.SIGN_UP,
      page: () => const SignUpScreen(),
    ),
    GetPage(
      name: Approutes.HOME_SCREEN,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: Approutes.BOTTOM_NAVBAR,
      page: () => const Bottomnavbar(),
    ),
    GetPage(
      name: Approutes.EXPLORE_SCREEN,
      page: () => const Explorescreen(),
    ),
    GetPage(
      name: Approutes.FAVORITE_SCREEN,
      page: () => const FavoriteScreen(),
    ),
    GetPage(
      name: Approutes.CART_SCREEN,
      page: () => const Cartscreen(),
    ),
    GetPage(
      name: Approutes.USER_SCREEN,
      page: () => const Userscreen(),
    ),
    // GetPage(
    //   name: Approutes.DETAIL_SCREEN,
    //   page: () => DetailScreen(),
    // )
  ];
}
