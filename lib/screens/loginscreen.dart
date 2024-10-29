import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:nectar/screens/homescreen.dart';
import 'package:nectar/screens/signupscreen.dart';
import 'package:nectar/utils/bottomnavbar.dart';
import 'package:nectar/utils/const.dart';

class LoginScreens extends StatefulWidget {
  const LoginScreens({super.key});

  @override
  State<LoginScreens> createState() => _LoginScreensState();
}

class _LoginScreensState extends State<LoginScreens> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  FocusNode emailfocusNode = FocusNode();
  FocusNode passwordfocusNode = FocusNode();

  String animatedType = "idle";

  bool isVisible = false;

  @override
  void initState() {
    // animation teddy
    passwordfocusNode.addListener(() {
      if (passwordfocusNode.hasFocus) {
        setState(() {
          animatedType = 'hands_up';
        });
      } else {
        setState(() {
          animatedType = 'hands_down';
        });
      }
    });

    emailfocusNode.addListener(() {
      emailfocusNode.hasFocus
          ? setState(() {
              animatedType = 'success';
            })
          : setState(() {
              animatedType = 'idle';
            });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 20),
                height: screenSize.height / 3,
                width: double.infinity,
                child: FlareActor(
                  'assets/images/Teddy.flr',
                  alignment: Alignment.center,
                  fit: BoxFit.contain,
                  animation: animatedType,
                  //getXLogin.animatedType.value,
                  callback: (animation) {
                    // getXLogin.animatedType.value = 'idle';
                    // getXLogin.onInit();
                    setState(() {
                      animatedType = 'idle';
                    });
                  },
                ),
              ),

              // Text(
              //   getXSession.accessToken.toString(),
              //   style: fontMedium.copyWith(color: whiteColor),
              // ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                child: SizedBox(
                  height: 50,
                  child: TextFormField(
                    style: fontBold.copyWith(color: greyColor),
                    focusNode: emailfocusNode,
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
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: SizedBox(
                    height: 50,
                    child: TextFormField(
                      focusNode: passwordfocusNode,
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
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomNavBar(),
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
                      'Login',
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
                            builder: (context) => const SignUpScreen(),
                          ));
                    },
                    child: Text(
                      "Don't Have Account? Sign Up",
                      style:
                          fontMedium.copyWith(color: greyColor, fontSize: 16),
                    )),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      )),
    ));
  }
}
