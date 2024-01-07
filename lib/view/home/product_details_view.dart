import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:myshop/common/color_extension.dart';
import 'package:myshop/common_widget/round_button.dart';

class ProductDetailsView extends StatefulWidget {
  const ProductDetailsView({super.key});

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    width: double.maxFinite,
                    height: media.width * 0.8,
                    decoration: BoxDecoration(
                        color: const Color(0xFFF2F3F2),
                        borderRadius: BorderRadius.circular(15)),
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/images/apple_red.png",
                      width: media.width * 0.8,
                    ),
                  ),
                  SafeArea(
                    child: AppBar(
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
                        actions: [
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Image.asset(
                                "assets/images/share.png",
                                width: 20,
                                height: 20,
                              )),
                        ]),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Natural Red Apple",
                            style: TextStyle(
                                color: TColor.primaryText,
                                fontSize: 22,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              "assets/images/love_outline_tab.png",
                              width: 25,
                              height: 25,
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "1kg, Price",
                      style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image.asset(
                              "assets/images/subtack.png",
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ),
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: TColor.placeholder.withOpacity(0.5),
                                  width: 1),
                              borderRadius: BorderRadius.circular(15)),
                          alignment: Alignment.center,
                          child: Text(
                            "1",
                            style: TextStyle(
                                color: TColor.primaryText,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image.asset(
                              "assets/images/add_green.png",
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "\$4.99",
                          style: TextStyle(
                              color: TColor.primaryText,
                              fontSize: 22,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Divider(
                      color: Colors.black26,
                      height: 1,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Product Detail",
                            style: TextStyle(
                                color: TColor.primaryText,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              "assets/images/detail_open.png",
                              width: 15,
                              height: 15,
                            )),
                      ],
                    ),
                    Text(
                      "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
                      style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Divider(
                      color: Colors.black26,
                      height: 1,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Nutritions",
                            style: TextStyle(
                                color: TColor.primaryText,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 8),
                          height: 25,
                          decoration: BoxDecoration(
                              color: TColor.placeholder.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(10)),
                          alignment: Alignment.center,
                          child: Text(
                            "100gr",
                            style: TextStyle(
                                color: TColor.secondaryText,
                                fontSize: 9,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              "assets/images/next.png",
                              width: 15,
                              height: 15,
                              color: TColor.primaryText,
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Divider(
                      color: Colors.black26,
                      height: 1,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Review",
                            style: TextStyle(
                                color: TColor.primaryText,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        IgnorePointer(
                          ignoring: true,
                          child: RatingBar.builder(
                            initialRating: 5,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 15,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 1.0),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Color(0xFFF3603F),
                            ),
                            onRatingUpdate: (rating) {},
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              "assets/images/next.png",
                              width: 15,
                              height: 15,
                              color: TColor.primaryText,
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    RoundButton(
                        title: "Add To Basket",
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => const MainTabView()));
                        }),
                  ],
                ),
              )
              // Text(
              //   "Login",
              //   textAlign: TextAlign.start,
              //   style: TextStyle(
              //       color: TColor.primaryText,
              //       fontSize: 26,
              //       fontWeight: FontWeight.w600),
              // ),
              // SizedBox(
              //   height: media.width * 0.03,
              // ),
              // Text(
              //   "Enter your email and password",
              //   style: TextStyle(
              //       color: TColor.secondaryText,
              //       fontSize: 16,
              //       fontWeight: FontWeight.w500),
              // ),
              // SizedBox(
              //   height: media.width * 0.1,
              // ),
            ],
          ),
        ));
  }
}
