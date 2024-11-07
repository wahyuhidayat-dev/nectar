import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nectar/screens/splashscreensecond.dart';
import 'package:nectar/utils/const.dart';
import 'package:nectar/utils/routing.dart';
import 'package:nectar/utils/utils.dart';

class SplashScreenFirst extends StatefulWidget {
  const SplashScreenFirst({super.key});

  @override
  State<SplashScreenFirst> createState() => _SplashScreenFirstState();
}

class _SplashScreenFirstState extends State<SplashScreenFirst> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
            // ignore: use_build_context_synchronously
            context,
            MaterialPageRoute(
              builder: (context) => const SplashScreenSecond(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenColor,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("assets/logo/logo_white.png"),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nectar",
                  style: fontBold.copyWith(color: whiteColor, fontSize: 32),
                ),
                Text(
                  "online groceries",
                  style: fontSemiBold.copyWith(color: whiteColor, fontSize: 18),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
