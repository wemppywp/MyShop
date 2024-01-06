import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myshop/common/color_extension.dart';
import 'package:myshop/common_widget/line_textfield.dart';
import 'package:myshop/common_widget/round_button.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtUsername = TextEditingController();

  bool isShow = true;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Stack(children: [
      Container(
        color: Colors.white,
        child: Image.asset(
          "assets/images/bottom_bg.png",
          width: media.width,
          height: media.height,
          fit: BoxFit.cover,
        ),
      ),
      Scaffold(
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
          ),
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 0.1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/color_logo.png",
                          width: 40,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: media.width * 0.18,
                    ),
                    Text(
                      "Sign Up",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 26,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: media.width * 0.03,
                    ),
                    Text(
                      "Enter your credentials to continue",
                      style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: media.width * 0.03,
                    ),
                    LineTextField(
                      title: "Username",
                      placeholder: "Enter your username",
                      keyboardType: TextInputType.name,
                      controller: txtUsername,
                    ),
                    SizedBox(
                      height: media.width * 0.03,
                    ),
                    LineTextField(
                      title: "Email",
                      placeholder: "Enter your email address",
                      keyboardType: TextInputType.emailAddress,
                      controller: txtEmail,
                      right: IconButton(
                          onPressed: () {
                            setState(() {
                              isShow = !isShow;
                            });
                          },
                          icon: Icon(
                              isShow ? Icons.visibility_off : Icons.visibility,
                              color: TColor.textTittle)),
                    ),
                    SizedBox(
                      height: media.width * 0.03,
                    ),
                    LineTextField(
                      title: "Password",
                      placeholder: "Enter your password",
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: isShow,
                      controller: txtPassword,
                      right: IconButton(
                          onPressed: () {
                            setState(() {
                              isShow = !isShow;
                            });
                          },
                          icon: Icon(
                              isShow ? Icons.visibility_off : Icons.visibility,
                              color: TColor.textTittle)),
                    ),
                    SizedBox(
                      height: media.width * 0.02,
                    ),
                    RichText(
                        text: TextSpan(
                            style: TextStyle(
                                color: TColor.secondaryText,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                            children: [
                          TextSpan(
                            text: "By continuing you agree to our ",
                            style: TextStyle(
                                color: TColor.secondaryText,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          TextSpan(
                            text: "Term of Serivce",
                            style: TextStyle(
                                color: TColor.primary,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                          TextSpan(
                            text: " and ",
                            style: TextStyle(
                                color: TColor.secondaryText,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          TextSpan(
                              text: "Privacy Policy.",
                              style: TextStyle(
                                  color: TColor.primary,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {}),
                        ])),
                    SizedBox(
                      height: media.width * 0.07,
                    ),
                    RoundButton(title: "Sign Up", onPressed: () {}),
                    SizedBox(
                      height: media.width * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Already have an account?",
                                style: TextStyle(
                                    color: TColor.primaryText,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Sign In",
                                style: TextStyle(
                                    color: TColor.primary,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ))
    ]);
  }
}
