import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:nectar/utils/const.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 10, 0),
        child: InkWell(
          onTap: () {
            // Navigator.pushReplacement(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => const Bottomnavbar(),
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
                'Add to Cart',
                style: fontBold.copyWith(color: whiteColor, fontSize: 18),
              ),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: backgroundColor,
        title: Text(
          'Favorite',
          style: fontBold.copyWith(fontSize: 20, color: blackColor),
        ),
      ),
      body: Container(
          padding: const EdgeInsets.all(8),
          height: MediaQuery.of(context).size.height * 0.7,
          width: double.infinity,
          child: ListView.builder(
            itemCount: favoriteData.length,
            itemBuilder: (context, index) {
              return Dismissible(
                key: UniqueKey(),
                background: Container(
                  color: yellowGradColor,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: FaIcon(
                          FontAwesomeIcons.trash,
                          color: whiteColor,
                        ),
                      ),
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          favoriteData[index].image.toString(),
                          width: 80,
                          height: 80,
                          fit: BoxFit.contain,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 200,
                                height: 50,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      favoriteData[index].name.toString(),
                                      style: fontBold.copyWith(
                                          color: blackColor, fontSize: 14),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          NumberFormat.currency(
                                                  locale: 'en_US',
                                                  symbol: 'USD ',
                                                  decimalDigits: 2)
                                              .format(
                                                  favoriteData[index].price),
                                          style: fontBold.copyWith(
                                              color: blackColor, fontSize: 14),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const FaIcon(
                                          FontAwesomeIcons.angleRight,
                                          size: 15,
                                          color: greyColor,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Divider(
                      color: greyColor.withOpacity(0.2),
                      thickness: 1,
                    )
                  ],
                ),
              );
            },
          )),
    );
  }
}
