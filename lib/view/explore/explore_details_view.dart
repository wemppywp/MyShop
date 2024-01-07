import 'package:flutter/material.dart';
import 'package:myshop/common/color_extension.dart';
import 'package:myshop/common_widget/product_cell.dart';

class ExploreDetailsView extends StatefulWidget {
  final Map eObj;
  const ExploreDetailsView({super.key, required this.eObj});

  @override
  State<ExploreDetailsView> createState() => _ExploreDetailsViewState();
}

class _ExploreDetailsViewState extends State<ExploreDetailsView> {
  List listArr = [
    {
      "name": "Diet Coke",
      "icon": "assets/images/diet_coke.png",
      "qty": "355",
      "unit": "ml, Price",
      "price": "\$1.99"
    },
    {
      "name": "Sprite Can",
      "icon": "assets/images/sprite_can.png",
      "qty": "325",
      "unit": "ml, Price",
      "price": "\$1.49"
    },
    {
      "name": "Apple & Grape Juice",
      "icon": "assets/images/juice_apple_grape.png",
      "qty": "2",
      "unit": "L, Price",
      "price": "\$15.99"
    },
    {
      "name": "Orange Juice",
      "icon": "assets/images/orenge_juice.png",
      "qty": "2",
      "unit": "L, Price",
      "price": "\$15.49"
    },
    {
      "name": "Coca Cola Can",
      "icon": "assets/images/cocacola_can.png",
      "qty": "325",
      "unit": "ml, Price",
      "price": "\$4.99"
    },
    {
      "name": "Pepsi Can",
      "icon": "assets/images/pepsi_can.png",
      "qty": "325",
      "unit": "ml, Price",
      "price": "\$5.49"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset(
              "assets/images/back.png",
              width: 20,
              height: 20,
            )),
        centerTitle: true,
        title: Text(
          widget.eObj["name"].toString(),
          style: TextStyle(
              color: TColor.primaryText,
              fontSize: 20,
              fontWeight: FontWeight.w700),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/filter_ic.png",
                width: 20,
                height: 20,
              )),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.73,
            crossAxisSpacing: 15,
            mainAxisSpacing: 10),
        itemCount: listArr.length,
        itemBuilder: ((context, index) {
          var pObj = listArr[index] as Map? ?? {};
          return ProductCell(
            pObj: pObj,
            margin: 0,
            weight: double.maxFinite,
            onPressed: () {},
            onCart: () {},
          );
        }),
      ),
    );
  }
}
