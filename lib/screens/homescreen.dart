import 'package:carousel_slider/carousel_slider.dart';
import 'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:nectar/screens/detailscreen.dart';
import 'package:nectar/screens/explorescreen.dart';
import 'package:nectar/utils/const.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    //Size screenSize = MediaQuery.of(context).size;
    return DraggableHome(
        alwaysShowLeadingAndAction: false,
        leading: Container(
          width: double.infinity,
        ),
        title: Container(
          width: double.infinity,
          color: whiteColor,
        ),
        headerWidget: const HeaderWidget(),
        body: [
          Container(
            color: backgroundColor,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Exclusive Offer",
                        style:
                            fontBold.copyWith(color: blackColor, fontSize: 24),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Explorescreen(),
                              ));
                        },
                        child: Text(
                          "See all",
                          style: fontRegular.copyWith(
                              color: greenColor, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    height: MediaQuery.of(context).size.height,
                    padding: const EdgeInsets.all(5),
                    child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 8.0,
                        crossAxisSpacing: 8.0,
                      ),
                      padding: const EdgeInsets.all(8.0),
                      itemCount: productData.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            // Get.toNamed(Approutes.DETAIL_SCREEN);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailScreen(
                                    image: productData[index].image.toString(),
                                    desc: productData[index]
                                        .description
                                        .toString(),
                                    name: productData[index].name.toString(),
                                    price: productData[index].price.toString(),
                                    rating: productData[index].rating!.rate!,
                                  ),
                                ));
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: 170,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: greyColor.withOpacity(0.2),
                                    width: 1),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                    productData[index].image.toString()),
                                Text(
                                  productData[index].name.toString(),
                                  style: fontBold.copyWith(
                                      color: blackColor, fontSize: 14),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      NumberFormat.currency(
                                              locale: 'en_US',
                                              symbol: 'USD ',
                                              decimalDigits: 2)
                                          .format(productData[index].price),
                                      style: fontBold.copyWith(fontSize: 18),
                                    ),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            fixedSize: const Size(20, 20),
                                            shape: const CircleBorder(),
                                            backgroundColor: greenColor),
                                        onPressed: () {},
                                        child: const FaIcon(
                                          FontAwesomeIcons.plus,
                                          color: whiteColor,
                                          size: 10,
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    )),
              ],
            ),
          )
          // listView(),
        ],
        fullyStretchable: true,
        backgroundColor: backgroundColor,
        appBarColor: backgroundColor);
  }
}

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  late TextEditingController searchController;
  late FocusNode searchfocusNode;
  @override
  void initState() {
    super.initState();
    searchfocusNode = FocusNode();
    searchController = TextEditingController();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: backgroundColor,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 30, 10, 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("assets/logo/logo_orange.png"),
                Text(
                  "What would you like\rto order",
                  style:
                      fontExtraBold.copyWith(color: blackColor, fontSize: 24),
                )
              ],
            ),
            const Divider(
              color: Colors.transparent,
              thickness: 0,
            ),
            SizedBox(
                child: CarouselSlider(
              options: CarouselOptions(
                  autoPlay: true, aspectRatio: 16 / 9, height: 100),
              items: bannerData
                  .map((item) => Container(
                        padding: const EdgeInsets.all(2),
                        child: Center(child: Image.asset(item.toString())),
                        //color: Colors.green,
                      ))
                  .toList(),
            )),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
              child: SizedBox(
                height: 50,
                child: TextFormField(
                  style: fontBold.copyWith(color: greyColor),
                  focusNode: searchfocusNode,
                  cursorColor: greenColor,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Explorescreen(),
                        ));
                  },
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                      hintText: 'search',
                      hintStyle: fontMedium.copyWith(color: greyColor),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: greyColor,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: greenColor),
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(color: greenColor),
                          borderRadius: BorderRadius.circular(10))),
                  controller: searchController,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
