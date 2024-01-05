import 'package:flutter/material.dart';
import 'package:myshop/common/color_extension.dart';
import 'package:myshop/view/login/welcome_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void fireOpenApp() async {
    await Future.delayed(const Duration(seconds: 3));
  }

  void startApp() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const WelcomeView()));
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: TColor.primary,
      body: Stack(
        children: [
          Image.asset(
            "assets/images/splash_logo.png",
            width: media.width * 0.5,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
