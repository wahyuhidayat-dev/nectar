import 'package:flutter/material.dart';
import 'package:nectar/utils/bottomnavbar.dart';
import 'package:nectar/utils/const.dart';

class Successscreen extends StatefulWidget {
  const Successscreen({super.key});

  @override
  State<Successscreen> createState() => _SuccessscreenState();
}

class _SuccessscreenState extends State<Successscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 30, 10, 20),
                child: Image.asset("assets/images/illustration_sucess.png"),
              ),
              Text(
                "Your Order has been \naccepted",
                textAlign: TextAlign.center,
                style: fontBold.copyWith(fontSize: 28),
              ),
              Text(
                  "Your items has been placcd and is on \nit’s way to being processed",
                  textAlign: TextAlign.center,
                  style: fontMedium.copyWith(
                    fontSize: 16,
                    color: greyColor.withOpacity(0.5),
                  )),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: InkWell(
                  onTap: () {
                    // Navigator.pushReplacement(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => const Successscreen(),
                    //     ));
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
                        'Track Order',
                        style:
                            fontBold.copyWith(color: whiteColor, fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Bottomnavbar(),
                      ));
                },
                child: Text(
                  'Back Home',
                  style: fontBold.copyWith(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
