import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:nectar/screens/successscreen.dart';
import 'package:nectar/utils/const.dart';

class Cartscreen extends StatefulWidget {
  const Cartscreen({super.key});

  @override
  State<Cartscreen> createState() => _CartscreenState();
}

class _CartscreenState extends State<Cartscreen> {
  List<TextEditingController> qtyContoller = [];
  List<FocusNode> focusNode = [];

  RxDouble jmlAmt = 0.0.obs;

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < cartData.length; i++) {
      qtyContoller.add(TextEditingController());
      qtyContoller[i].text = "1";
      focusNode.add(FocusNode());
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'My Cart',
          style: fontBold.copyWith(color: blackColor, fontSize: 20),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 10, 0),
        child: InkWell(
          onTap: () {
            jmlAmt.value = 0;
            for (int i = 0; i < cartData.length; i++) {
              jmlAmt.value +=
                  cartData[i].price! * int.parse(qtyContoller[i].text);
            }
            //  print(jmlAmt);
            showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height * 0.7,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Checkout',
                                style: fontBold.copyWith(fontSize: 18),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: const FaIcon(
                                  FontAwesomeIcons.x,
                                  size: 15,
                                ),
                              )
                            ],
                          ),
                        ),
                        Divider(
                          color: greyColor.withOpacity(0.2),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Delivery",
                                  style: fontBold.copyWith(
                                      fontSize: 14,
                                      color: greyColor.withOpacity(0.5))),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Select Method",
                                      style: fontBold.copyWith(fontSize: 14)),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const FaIcon(FontAwesomeIcons.angleRight)
                                ],
                              )
                            ],
                          ),
                        ),
                        Divider(
                          color: greyColor.withOpacity(0.2),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Payment",
                                  style: fontBold.copyWith(
                                      fontSize: 14,
                                      color: greyColor.withOpacity(0.5))),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset("assets/logo/card.png"),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const FaIcon(FontAwesomeIcons.angleRight)
                                ],
                              )
                            ],
                          ),
                        ),
                        Divider(
                          color: greyColor.withOpacity(0.2),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Promo Code",
                                  style: fontBold.copyWith(
                                      fontSize: 14,
                                      color: greyColor.withOpacity(0.5))),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Pick discount",
                                      style: fontBold.copyWith(fontSize: 14)),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const FaIcon(FontAwesomeIcons.angleRight)
                                ],
                              )
                            ],
                          ),
                        ),
                        Divider(
                          color: greyColor.withOpacity(0.2),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Total Cost",
                                  style: fontBold.copyWith(
                                      fontSize: 14,
                                      color: greyColor.withOpacity(0.5))),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                      NumberFormat.currency(
                                              locale: 'en_US',
                                              symbol: 'USD ',
                                              decimalDigits: 2)
                                          .format(jmlAmt.value),
                                      style: fontBold.copyWith(fontSize: 14)),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const FaIcon(FontAwesomeIcons.angleRight)
                                ],
                              )
                            ],
                          ),
                        ),
                        Divider(
                          color: greyColor.withOpacity(0.2),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: Text(
                            "By placing an order you agree to our\nTerms And Conditions",
                            style: fontMedium.copyWith(),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Successscreen(),
                                  ));
                            },
                            child: Container(
                              width: double.infinity,
                              height: 50,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: greenColor,
                              ),
                              child: Center(
                                child: Text(
                                  'Place Order',
                                  style: fontBold.copyWith(
                                      color: whiteColor, fontSize: 18),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                });
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
                'Check out',
                style: fontBold.copyWith(color: whiteColor, fontSize: 18),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(8),
            height: MediaQuery.of(context).size.height * 0.7,
            width: double.infinity,
            child: ListView.builder(
              itemCount: cartData.length,
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
                            cartData[index].image.toString(),
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
                                        cartData[index].name.toString(),
                                        style: fontBold.copyWith(
                                            color: blackColor, fontSize: 14),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            cartData.removeAt(index);
                                          });
                                        },
                                        child: const FaIcon(
                                          FontAwesomeIcons.x,
                                          size: 15,
                                          color: greyColor,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                    width: 200,
                                    height: 50,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  int currentValue = int.parse(
                                                      qtyContoller[index].text);
                                                  setState(() {
                                                    currentValue--;
                                                    qtyContoller[index]
                                                        .text = (currentValue >
                                                                0
                                                            ? currentValue
                                                            : 0)
                                                        .toString(); // decrementing value
                                                  });
                                                },
                                                child: Container(
                                                  padding:
                                                      const EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: greyColor
                                                            .withOpacity(0.5),
                                                        width: 1),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                  ),
                                                  child: const FaIcon(
                                                    FontAwesomeIcons.minus,
                                                    size: 15,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: SizedBox(
                                                  height: 40,
                                                  width: 50,
                                                  child: TextFormField(
                                                    textAlign: TextAlign.center,
                                                    textAlignVertical:
                                                        TextAlignVertical
                                                            .center,
                                                    focusNode: focusNode[index],
                                                    style: fontBold.copyWith(
                                                        fontSize: 10,
                                                        color: greyColor),
                                                    cursorColor: greenColor,
                                                    textInputAction:
                                                        TextInputAction.done,
                                                    onFieldSubmitted: (value) {
                                                      if (value.isEmpty) {
                                                        qtyContoller[index]
                                                            .text = "0";
                                                      } else {
                                                        qtyContoller[index]
                                                            .text = value;
                                                      }
                                                    },
                                                    keyboardType:
                                                        TextInputType.number,
                                                    decoration: InputDecoration(
                                                        hintStyle:
                                                            fontMedium.copyWith(
                                                                color:
                                                                    greyColor),
                                                        focusedBorder:
                                                            const OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color:
                                                                  greenColor),
                                                        ),
                                                        border:
                                                            const OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color:
                                                                  greenColor),
                                                        )),
                                                    controller:
                                                        qtyContoller[index],
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  int currentValue = int.parse(
                                                      qtyContoller[index].text);
                                                  setState(() {
                                                    currentValue++;
                                                    qtyContoller[index].text =
                                                        (currentValue)
                                                            .toString(); // incrementing value
                                                  });
                                                },
                                                child: Container(
                                                  padding:
                                                      const EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: greyColor
                                                            .withOpacity(0.5),
                                                        width: 1),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                  ),
                                                  child: const FaIcon(
                                                    FontAwesomeIcons.plus,
                                                    color: greenColor,
                                                    size: 15,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Text(
                                          NumberFormat.currency(
                                                  locale: 'en_US',
                                                  symbol: 'USD ',
                                                  decimalDigits: 2)
                                              .format(cartData[index].price! *
                                                  int.parse(qtyContoller[index]
                                                      .text)),
                                          // "${cartData[index].price! * int.parse(qtyContoller[index].text)}"),
                                          // maxLines: 2,
                                          // overflow: TextOverflow.ellipsis,
                                          style: fontBold.copyWith(
                                              color: blackColor, fontSize: 12),
                                        )
                                      ],
                                    )),
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
      ),
    );
  }
}
