import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:nectar/screens/cartscreen.dart';
import 'package:nectar/utils/const.dart';

// ignore: must_be_immutable
class DetailScreen extends StatefulWidget {
  DetailScreen(
      {super.key,
      required this.image,
      required this.desc,
      required this.name,
      required this.price,
      required this.rating});
  String image, name, price, desc;
  double rating;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

late TextEditingController qtyContoller;
FocusNode focusNode = FocusNode();

class _DetailScreenState extends State<DetailScreen> {
  @override
  void initState() {
    super.initState();
    qtyContoller = TextEditingController();
    qtyContoller.text = "0";
  }

  @override
  void dispose() {
    super.dispose();
    qtyContoller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                widget.image,
                width: double.infinity,
                height: 300,
                fit: BoxFit.scaleDown,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              int currentValue = int.parse(qtyContoller.text);
                              setState(() {
                                currentValue--;
                                qtyContoller.text =
                                    (currentValue > 0 ? currentValue : 0)
                                        .toString(); // decrementing value
                              });
                            },
                            child: const FaIcon(
                              FontAwesomeIcons.minus,
                              size: 20,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                            child: SizedBox(
                              height: 60,
                              width: 60,
                              child: TextFormField(
                                textAlign: TextAlign.center,
                                focusNode: focusNode,
                                style: fontBold.copyWith(color: greyColor),
                                cursorColor: greenColor,
                                textInputAction: TextInputAction.done,
                                onFieldSubmitted: (value) {
                                  if (value.isEmpty) {
                                    qtyContoller.text = "0";
                                  } else {
                                    qtyContoller.text = value;
                                  }
                                },
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    hintStyle:
                                        fontMedium.copyWith(color: greyColor),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            const BorderSide(color: greenColor),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    border: OutlineInputBorder(
                                        borderSide:
                                            const BorderSide(color: greenColor),
                                        borderRadius:
                                            BorderRadius.circular(20))),
                                controller: qtyContoller,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              int currentValue = int.parse(qtyContoller.text);
                              setState(() {
                                currentValue++;
                                qtyContoller.text = (currentValue)
                                    .toString(); // incrementing value
                              });
                            },
                            child: const FaIcon(
                              FontAwesomeIcons.plus,
                              size: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                    Text(
                      NumberFormat.currency(
                              locale: 'en_US', symbol: 'USD ', decimalDigits: 2)
                          .format(double.parse(widget.price)),
                      style: fontBold.copyWith(color: blackColor, fontSize: 24),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.name,
                      style: fontBold.copyWith(color: blackColor, fontSize: 20),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const FaIcon(
                        FontAwesomeIcons.heart,
                        color: greyColor,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.desc,
                  style: fontRegular.copyWith(color: blackColor, fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Review",
                      style: fontBold.copyWith(color: blackColor),
                    ),
                    SizedBox(
                      width: 150,
                      height: 50,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: widget.rating.toInt(),
                        itemBuilder: (context, index) {
                          return Image.asset(
                            "assets/images/star.png",
                            width: 30,
                            height: 30,
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Cartscreen(),
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
                      'Add to Cart',
                      style: fontBold.copyWith(color: whiteColor, fontSize: 18),
                    )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
