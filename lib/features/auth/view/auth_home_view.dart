import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:twitter/constants/constants.dart';
import 'package:twitter/themes/palette.dart';
import '../widgets/widgets.dart';

class AuthHomeView extends StatefulWidget {
  const AuthHomeView({Key? key}) : super(key: key);
  @override
  State<AuthHomeView> createState() => _AuthHomeViewState();
}

class _AuthHomeViewState extends State<AuthHomeView> {
  final appbar = UIConstants.appBar(null);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Expanded(child: HeroText(text: "See what’s happening in the world right now.")),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              RoundedButton(
                callback: () {},
                size: const Size(310, 35),
                borderRadius: const BorderRadius.all(Radius.circular(40)),
                padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 5),
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
                )
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 1,
                      width: 125,
                      child: Container(
                        color: const Color.fromRGBO(255, 255, 255, .4),
                      ),
                    ),
                    const Text(
                      "or",
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, .75),
                        fontSize: 16
                      ),
                    ),
                    SizedBox(
                      height: 1,
                      width: 125,
                      child: Container(
                        color: const Color.fromRGBO(255, 255, 255, .4),
                      ),
                    ),
                  ],
                ),
              ),
              RoundedButton(
                callback: () {},
                size: const Size(310, 35),
                borderRadius: const BorderRadius.all(Radius.circular(40)),
                padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white70,
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
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {},
                      ),
                      const TextSpan(
                        text: ", ",
                      ),
                      TextSpan(
                        style: const TextStyle(
                          color: Palette.blueColor,
                        ),
                        text: "Privacy Policy",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {},
                      ),
                      const TextSpan(
                        text: " and ",
                      ),
                      TextSpan(
                        style: const TextStyle(
                          color: Palette.blueColor,
                        ),
                        text: "Cookie Use",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {},
                      ),
                      const TextSpan(
                        text: ". ",
                      ),
                    ]
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar:
        Padding(
          padding: const EdgeInsets.fromLTRB(50, 50, 50, 30),
          child: RichText(
            text: TextSpan(
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(255, 255, 255, 0.80)
              ),
              children: [
                const TextSpan(
                  text: "Have an account already? "
                ),
                TextSpan(
                  style: const TextStyle(
                    color: Palette.blueColor,
                  ),
                  text: "Log in",
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {},
                ),
              ]
            ),
          ),
        ),
    );
  }
}
