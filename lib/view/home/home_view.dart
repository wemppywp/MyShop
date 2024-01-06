import 'package:flutter/material.dart';
import 'package:myshop/common/color_extension.dart';
import 'package:myshop/common_widget/category_cell.dart';
import 'package:myshop/common_widget/product_cell.dart';
import 'package:myshop/common_widget/section_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController txtSearch = TextEditingController();

  List exclusiveOfferArr = [
    {
      "name": "Organic Bananas",
      "icon": "assets/images/banana.png",
      "qty": "7",
      "unit": "pcs, Prices",
      "price": "\$1.99"
    },
    {
      "name": "Red Apple",
      "icon": "assets/images/apple.png",
      "qty": "1",
      "unit": "kg, Prices",
      "price": "\$4.99"
    },
  ];

  List bestSellingArr = [
    {
      "name": "Bell Pepper Red",
      "icon": "assets/images/bell_pepper_red.png",
      "qty": "1",
      "unit": "kg, Prices",
      "price": "\$2.99"
    },
    {
      "name": "Ginger",
      "icon": "assets/images/ginger.png",
      "qty": "250",
      "unit": "gr, Prices",
      "price": "\$3.99"
    },
  ];

  List groceriesArr = [
    {
      "name": "Pulses",
      "icon": "assets/images/pulses.png",
      "color": const Color(0xffF8A44C),
    },
    {
      "name": "Ginger",
      "icon": "assets/images/ginger.png",
      "color": const Color(0xff53B175),
    },
  ];

  List listArr = [
    {
      "name": "Beff Bone",
      "icon": "assets/images/beef_bone.png",
      "qty": "1",
      "unit": "kg, Prices",
      "price": "\$4.99"
    },
    {
      "name": "Boiler Chicken",
      "icon": "assets/images/broiler_chicken.png",
      "qty": "1",
      "unit": "kg, Prices",
      "price": "\$4.99"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/color_logo.png",
                      width: 25,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/location.png",
                      width: 16,
                      height: 16,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Jakarta, Indonesia",
                      style: TextStyle(
                          color: TColor.darkGray,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 52,
                      decoration: BoxDecoration(
                          color: const Color(0xFFF2F3F2),
                          borderRadius: BorderRadius.circular(15)),
                      alignment: Alignment.center,
                      child: TextField(
                        controller: txtSearch,
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 16),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Image.asset(
                              "assets/images/search.png",
                              width: 20,
                              height: 20,
                            ),
                          ),
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: "Search Store",
                          hintStyle: TextStyle(
                              color: TColor.secondaryText,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    )),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                      width: double.maxFinite,
                      height: 115,
                      decoration: BoxDecoration(
                          color: const Color(0xFFF2F3F2),
                          borderRadius: BorderRadius.circular(15)),
                      alignment: Alignment.center,
                      child: Image.asset(
                        "assets/images/banner_top.png",
                        fit: BoxFit.cover,
                      )),
                ),
                SectionView(
                    title: "Exclusive Offer",
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 20),
                    onPressed: () {}),
                SizedBox(
                  height: 230,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      itemCount: exclusiveOfferArr.length,
                      itemBuilder: (context, index) {
                        var pObj = exclusiveOfferArr[index] as Map? ?? {};
                        return ProductCell(
                          pObj: pObj,
                          onPressed: () {},
                          onCart: () {},
                        );
                      }),
                ),
                SectionView(
                    title: "Best Selling",
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 20),
                    onPressed: () {}),
                SizedBox(
                  height: 230,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      itemCount: bestSellingArr.length,
                      itemBuilder: (context, index) {
                        var pObj = bestSellingArr[index] as Map? ?? {};
                        return ProductCell(
                          pObj: pObj,
                          onPressed: () {},
                          onCart: () {},
                        );
                      }),
                ),
                SectionView(
                    title: "Groceries",
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 20),
                    onPressed: () {}),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      itemCount: groceriesArr.length,
                      itemBuilder: (context, index) {
                        var pObj = groceriesArr[index] as Map? ?? {};
                        return CategoryCell(
                          pObj: pObj,
                          onPressed: () {},
                        );
                      }),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 230,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      itemCount: listArr.length,
                      itemBuilder: (context, index) {
                        var pObj = listArr[index] as Map? ?? {};
                        return ProductCell(
                          pObj: pObj,
                          onPressed: () {},
                          onCart: () {},
                        );
                      }),
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ));
  }
}
