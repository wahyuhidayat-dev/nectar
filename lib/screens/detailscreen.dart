import 'package:flutter/material.dart';
import 'package:nectar/utils/const.dart';

class DetailScreen extends StatefulWidget {
  DetailScreen(
      {super.key,
      required this.image,
      required this.desc,
      required this.name,
      required this.price});
  String image, name, price, desc;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
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
            Row(children: [
              
            ],),
            Text(
              widget.name,
              style: fontBold.copyWith(color: blackColor, fontSize: 18),
            ),
            Text(widget.desc)
          ],
        ),
      ),
    );
  }
}
