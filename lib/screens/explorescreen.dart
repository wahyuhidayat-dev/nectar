import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nectar/model/product.dart';
import 'package:nectar/utils/const.dart';

class Explorescreen extends StatefulWidget {
  const Explorescreen({super.key});

  @override
  State<Explorescreen> createState() => _ExplorescreenState();
}

class _ExplorescreenState extends State<Explorescreen> {
  TextEditingController searchController = TextEditingController();
  FocusNode searchfocusNode = FocusNode();
  List<Product> _filteredData = [];
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _filteredData = productData;
    searchController.addListener(_performSearch);
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  Future<void> _performSearch() async {
    setState(() {
      _isLoading = true;
    });
    await Future.delayed(const Duration(milliseconds: 1000));

    setState(() {
      _filteredData = productData
          .where((element) => element.name
              .toString()
              .toLowerCase()
              .contains(searchController.text.toLowerCase()))
          .toList();
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
          child: SizedBox(
            height: 45,
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
      ),
      body: Container(
          height: MediaQuery.of(context).size.height * 0.8,
          padding: const EdgeInsets.all(5),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 8.0,
            ),
            padding: const EdgeInsets.all(8.0),
            itemCount: _filteredData.length,
            itemBuilder: (context, index) {
              return Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: 170,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    border:
                        Border.all(color: greyColor.withOpacity(0.2), width: 1),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(_filteredData[index].image.toString()),
                    Text(
                      _filteredData[index].name.toString(),
                      style: fontBold.copyWith(color: blackColor, fontSize: 14),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$${_filteredData[index].price.toString()}",
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
              );
            },
          )),
    );
  }
}
