import 'package:flutter/material.dart';
import 'package:twitter/common/common.dart';
import 'package:twitter/constants/constants.dart';
import 'package:twitter/features/auth/widgets/widgets.dart';
import 'package:twitter/themes/palette.dart';

class LoginVerificationView extends StatefulWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => const LoginVerificationView());
  const LoginVerificationView({Key? key}) : super(key: key);

  @override
  State<LoginVerificationView> createState() => _LoginVerificationViewState();
}

class _LoginVerificationViewState extends State<LoginVerificationView> {
  final TextEditingController userController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIConstants.appBar(
        IconButton(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.close,
            color: Palette.whiteColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const HeroText(text: "Enter your password"),
              AuthField(
                controller: userController,
                hintText: "Phone, email, username",
              ),
              AuthField(
                controller: passwordController,
                hintText: "Password",
                textInputType: TextInputType.text,
                obscure: true,
                autoFocus: true,
              ),
              const SizedBox(
                height: 20,
              ),
              RoundedButton(
                callback: () {},
                padding: const EdgeInsets.all(15),
                borderRadius: const BorderRadius.all(
                  Radius.circular(30),
                ),
                size: const Size(400, 50),
                background: Colors.white,
                foreground: Colors.black,
                child: const Text(
                  "Log In",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () {},
                child: const Text(
                  "Forgot Password",
                  style: TextStyle(
                      color: Palette.blueColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
