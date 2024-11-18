import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nectar/utils/const.dart';

class Userscreen extends StatefulWidget {
  const Userscreen({super.key});

  @override
  State<Userscreen> createState() => _UserscreenState();
}

class _UserscreenState extends State<Userscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                width: double.infinity,
                height: 100,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      child: FaIcon(FontAwesomeIcons.user),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Wahyu Hidayat",
                          style: fontBold.copyWith(
                              color: blackColor, fontSize: 16),
                        ),
                        Text(
                          "whyhid47@gmail.com",
                          style: fontMedium.copyWith(fontSize: 14),
                        )
                      ],
                    )
                  ],
                )),
            Divider(
              color: greyColor.withOpacity(0.2),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: FaIcon(
                          FontAwesomeIcons.bagShopping,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Orders",
                          style: fontBold.copyWith(
                              color: blackColor, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  const FaIcon(FontAwesomeIcons.angleRight),
                ],
              ),
            ),
            Divider(
              color: greyColor.withOpacity(0.2),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: FaIcon(
                          FontAwesomeIcons.idCard,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "My Details",
                          style: fontBold.copyWith(
                              color: blackColor, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  const FaIcon(FontAwesomeIcons.angleRight)
                ],
              ),
            ),
            Divider(
              color: greyColor.withOpacity(0.2),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: FaIcon(
                          FontAwesomeIcons.locationDot,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Delivery Address",
                          style: fontBold.copyWith(
                              color: blackColor, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  const FaIcon(FontAwesomeIcons.angleRight)
                ],
              ),
            ),
            Divider(
              color: greyColor.withOpacity(0.2),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: FaIcon(
                          FontAwesomeIcons.creditCard,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Payment Method",
                          style: fontBold.copyWith(
                              color: blackColor, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  const FaIcon(FontAwesomeIcons.angleRight)
                ],
              ),
            ),
            Divider(
              color: greyColor.withOpacity(0.2),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: FaIcon(
                          FontAwesomeIcons.ticketSimple,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Promo Card",
                          style: fontBold.copyWith(
                              color: blackColor, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  const FaIcon(FontAwesomeIcons.angleRight)
                ],
              ),
            ),
            Divider(
              color: greyColor.withOpacity(0.2),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: FaIcon(
                          FontAwesomeIcons.bell,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Notifications",
                          style: fontBold.copyWith(
                              color: blackColor, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  const FaIcon(FontAwesomeIcons.angleRight)
                ],
              ),
            ),
            Divider(
              color: greyColor.withOpacity(0.2),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: FaIcon(
                          FontAwesomeIcons.circleQuestion,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Help",
                          style: fontBold.copyWith(
                              color: blackColor, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  const FaIcon(FontAwesomeIcons.angleRight)
                ],
              ),
            ),
            Divider(
              color: greyColor.withOpacity(0.2),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: FaIcon(
                          FontAwesomeIcons.circleExclamation,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "About",
                          style: fontBold.copyWith(
                              color: blackColor, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  const FaIcon(FontAwesomeIcons.angleRight)
                ],
              ),
            ),
            Divider(
              color: greyColor.withOpacity(0.2),
            ),
          ],
        ),
      ),
    );
  }
}
