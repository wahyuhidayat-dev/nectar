import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nectar/screens/cartscreen.dart';
import 'package:nectar/screens/explorescreen.dart';
import 'package:nectar/screens/favoritescreen.dart';
import 'package:nectar/screens/homescreen.dart';
import 'package:nectar/screens/userscreen.dart';
import 'package:nectar/utils/const.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final PageController pageController = PageController(initialPage: 0);
  List<Widget> screensPage = [
    const HomeScreen(),
    const Explorescreen(),
    const Cartscreen(),
    const FavoriteScreen(),
    const Userscreen()
  ];
  int maxCount = 5;
  GlobalKey<CurvedNavigationBarState> bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    // Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: CurvedNavigationBar(
            //height: screenSize.height * 0.2,
            key: bottomNavigationKey,
            index: 0,
            items: const [
              FaIcon(
                FontAwesomeIcons.store,
                size: 25,
                color: whiteColor,
              ),
              FaIcon(
                FontAwesomeIcons.magnifyingGlass,
                size: 25,
                color: whiteColor,
              ),
              FaIcon(
                FontAwesomeIcons.cartShopping,
                size: 25,
                color: whiteColor,
              ),
              FaIcon(
                FontAwesomeIcons.heart,
                size: 25,
                color: whiteColor,
              ),
              FaIcon(
                FontAwesomeIcons.user,
                size: 25,
                color: whiteColor,
              ),
            ],
            color: greenColor ,
            buttonBackgroundColor: greenColor, // circle color
            backgroundColor: backgroundColor, // background circle color
            animationCurve: Curves.easeInOut,
            animationDuration: const Duration(milliseconds: 400),
            onTap: (index) {
              setState(() {
                // _page = index;
                pageController.jumpToPage(index);
              });
            },
            letIndexChange: (index) => true,
          ),
          body: PageView(
            controller: pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: List.generate(
              screensPage.length,
              (index) => screensPage[index],
            ),
          )),
    );
  }
}
