import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../common/common.dart';
import '../../../constants/constants.dart';
import '../../../themes/palette.dart';
import '../auth.dart';

class GetStartedView extends StatefulWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => const GetStartedView());
  const GetStartedView({Key? key}) : super(key: key);
  @override
  State<GetStartedView> createState() => _GetStartedViewState();
}

class _GetStartedViewState extends State<GetStartedView> {
  final appbar = UIConstants.appBar(null);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 45,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 2 / 5,
                width: MediaQuery.of(context).size.width,
                child: const HeroText(
                    text: "See what’s happening in the world right now."),
              ),
              RoundedButton(
                  callback: () {},
                  size: const Size(600, 35),
                  borderRadius: const BorderRadius.all(Radius.circular(40)),
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 5),
                  background: Palette.whiteColor,
                  foreground: Palette.backgroundColor,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Image(
                        image: AssetImage(AssetsConstants.googleIcon),
                        width: 20,
                        height: 20,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Continue to Google",
                        style: TextStyle(
                          fontFamily: "Anuphan-Bold",
                          fontSize: 20,
                        ),
                      ),
                    ],
                  )),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 1.5,
                      width: 125,
                      child: Container(
                        color: Palette.lightPrimary,
                      ),
                    ),
                    const Text(
                      "or",
                      style:
                          TextStyle(color: Palette.softPrimary, fontSize: 16),
                    ),
                    SizedBox(
                      height: 1.5,
                      width: 125,
                      child: Container(
                        color: Palette.lightPrimary,
                      ),
                    ),
                  ]),
              RoundedButton(
                callback: () {
                  Navigator.push(context, SignUpView.route());
                },
                size: const Size(600, 35),
                borderRadius: const BorderRadius.all(Radius.circular(40)),
                padding:
                    const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                background: Palette.whiteColor,
                foreground: Palette.backgroundColor,
                child: const Text(
                  "Create Account",
                  style: TextStyle(
                    fontFamily: "Anuphan-Bold",
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                    style: const TextStyle(
                      fontSize: 18,
                      color: Palette.softPrimary,
                    ),
                    children: [
                      const TextSpan(
                        text: "By signing up, you agree to our ",
                      ),
                      TextSpan(
                        style: const TextStyle(
                          color: Palette.blueColor,
                        ),
                        text: "Terms",
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                      const TextSpan(
                        text: ", ",
                      ),
                      TextSpan(
                        style: const TextStyle(
                          color: Palette.blueColor,
                        ),
                        text: "Privacy Policy",
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                      const TextSpan(
                        text: " and ",
                      ),
                      TextSpan(
                        style: const TextStyle(
                          color: Palette.blueColor,
                        ),
                        text: "Cookie Use",
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                      const TextSpan(
                        text: ". ",
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(50, 50, 50, 30),
        child: RichText(
          text: TextSpan(
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Palette.softPrimary),
              children: [
                const TextSpan(text: "Have an account already? "),
                TextSpan(
                  style: const TextStyle(
                    color: Palette.blueColor,
                  ),
                  text: "Log in",
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(context, LoginView.route());
                    },
                ),
              ]),
        ),
      ),
    );
  }
}
