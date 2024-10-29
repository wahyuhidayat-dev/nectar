import 'package:flutter/material.dart';
import 'package:nectar/utils/const.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // Size screenSize = MediaQuery.of(context).size;
    TextEditingController searchController = TextEditingController();
    FocusNode searchfocusNode = FocusNode();
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 30, 10, 20),
            child: Image.asset("assets/logo/logo_orange.png"),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.location_on,
                  color: greyColor,
                ),
                Text(
                  "Jakarta",
                  style: fontBold.copyWith(color: greyColor),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: SizedBox(
              height: 50,
              child: TextFormField(
                style: fontBold.copyWith(color: greyColor),
                focusNode: searchfocusNode,
                cursorColor: greenColor,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    hintText: 'search',
                    hintStyle: fontMedium.copyWith(color: greyColor),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: greyColor,
                    ),
                    // suffixIcon: const Icon(
                    //   Icons.email,
                    //   color: greyColor,
                    // ),
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
    ));
  }
}
