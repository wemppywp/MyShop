import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:myshop/common/color_extension.dart';
import 'package:myshop/common_widget/round_button.dart';
import 'package:myshop/view/login/verification_view.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  TextEditingController txtMobile = TextEditingController();
  FlCountryCodePicker countryPicker = const FlCountryCodePicker();
  late CountryCode countryCode;

  @override
  void initState() {
    super.initState();
    countryCode = countryPicker.countryCodes
        .firstWhere((element) => element.name == "Indonesia");
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                "assets/images/bottom_bg.png",
                width: media.width,
                height: media.height,
                fit: BoxFit.cover,
              )
            ],
          ),
          Image.asset(
            "assets/images/sign_in_top.png",
            width: media.width,
          ),
          SingleChildScrollView(
            child: SafeArea(
                child: Column(
              children: [
                SizedBox(
                  height: media.width * 1,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Get your groceries\nwith nectar",
                        style: TextStyle(
                            color: TColor.primaryText,
                            fontSize: 26,
                            fontFamily: "Gilroy-SemiBold",
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      TextField(
                        controller: txtMobile,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          prefixIcon: GestureDetector(
                            onTap: () async {
                              final code = await countryPicker.showPicker(
                                  context: context);

                              if (code != null) {
                                countryCode = code;
                                if (mounted) {
                                  setState(() {});
                                }
                              }
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 8),
                                  width: 35,
                                  height: 35,
                                  child: countryCode.flagImage(),
                                ),
                                Text(
                                  "${countryCode.dialCode}",
                                  style: TextStyle(
                                    color: TColor.primaryText,
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                )
                              ],
                            ),
                          ),
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: "Mobile Number",
                          hintStyle: TextStyle(
                            color: TColor.placeholder,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Container(
                        width: double.maxFinite,
                        height: 1,
                        color: const Color(0xffE2E2E2),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  "Or connect with social media",
                  style: TextStyle(
                      color: TColor.secondaryText,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: RoundIconButton(
                      title: "Continue with Google",
                      icon: "assets/images/google_logo.png",
                      bgColor: TColor.blue,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const VerificationView()));
                      }),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: RoundIconButton(
                      title: "Continue with Facebook",
                      icon: "assets/images/fb_logo.png",
                      bgColor: TColor.darkBlue,
                      onPressed: () {}),
                )
              ],
            )),
          )
        ],
      ),
    );
  }
}
