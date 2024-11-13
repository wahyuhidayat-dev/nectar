import 'package:flutter/material.dart';
import 'package:nectar/screens/loginscreen.dart';
import 'package:nectar/utils/const.dart';

class SplashScreenSecond extends StatelessWidget {
  const SplashScreenSecond({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    // Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/img_splash.png",
            fit: BoxFit.cover,
            width: screenSize.width,
            height: screenSize.height,
          ),
          Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: screenSize.height / 2,
              ),
              Image.asset("assets/logo/logo_white.png"),
              Text(
                "Welcome to our store",
                style: fontExtraBold.copyWith(color: whiteColor, fontSize: 32),
              ),
              Text(
                "Ger your groceries in as fast as one hour",
                style: fontMedium.copyWith(color: whiteColor, fontSize: 18),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreens(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      )),
                      backgroundColor: greenColor,
                      padding: const EdgeInsets.symmetric(horizontal: 50)),
                  child: Text(
                    "Get started",
                    style: fontBold.copyWith(color: whiteColor),
                  ))
            ],
          )),
        ],
      ),
    );
  }
}
