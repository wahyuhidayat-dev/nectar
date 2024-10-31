import 'package:flutter/material.dart';
import 'package:nectar/screens/loginscreen.dart';
import 'package:nectar/utils/bottomnavbar.dart';
import 'package:nectar/utils/const.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 50),
              child: Image.asset("assets/logo/logo_orange.png"),
            ),
            Text(
              "Sign Up",
              style: fontBold.copyWith(color: blackColor, fontSize: 24),
            ),
            Text(
              "Enter your credentials to continue",
              style: fontRegular.copyWith(color: greyColor, fontSize: 16),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
              child: SizedBox(
                height: 50,
                child: TextFormField(
                  style: fontBold.copyWith(color: greyColor),
                  cursorColor: greenColor,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      hintText: 'name',
                      hintStyle: fontMedium.copyWith(color: greyColor),
                      suffixIcon: const Icon(
                        Icons.abc,
                        color: greyColor,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: greenColor),
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(color: greenColor),
                          borderRadius: BorderRadius.circular(10))),
                  controller: nameController,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
              child: SizedBox(
                height: 50,
                child: TextFormField(
                  style: fontBold.copyWith(color: greyColor),
                  cursorColor: greenColor,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      hintText: 'email',
                      hintStyle: fontMedium.copyWith(color: greyColor),
                      suffixIcon: const Icon(
                        Icons.email,
                        color: greyColor,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: greenColor),
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(color: greenColor),
                          borderRadius: BorderRadius.circular(10))),
                  controller: emailController,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
              child: SizedBox(
                  height: 50,
                  child: TextFormField(
                    style: fontBold.copyWith(color: greyColor),
                    obscureText: isVisible ? true : false,
                    cursorColor: greenColor,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                        hintText: 'password',
                        hintStyle: fontMedium.copyWith(color: greyColor),
                        suffixIcon: InkWell(
                          onTap: () {
                            // getXLogin.toggle();
                            setState(() {
                              isVisible = !isVisible;
                            });
                          },
                          child: Icon(
                            isVisible ? Icons.lock : Icons.lock_open,
                            color: greyColor,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: greenColor),
                            borderRadius: BorderRadius.circular(10)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    controller: passwordController,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
              child: Text(
                "By continuing you agree to our Terms of Service and Privacy Policy.",
                style: fontRegular.copyWith(color: greyColor, fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BottomNavBar(),
                      ));
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: greenColor,
                  ),
                  child: Center(
                      child: Text(
                    'Sign Up',
                    style: fontBold.copyWith(color: whiteColor, fontSize: 18),
                  )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 30),
              child: InkWell(
                  splashColor: Colors.transparent,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreens(),
                        ));
                  },
                  child: Text(
                    "Already have an account? Login",
                    style: fontMedium.copyWith(color: greyColor, fontSize: 16),
                  )),
            )
          ],
        ),
      ),
    ));
  }
}
