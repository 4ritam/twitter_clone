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
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.close,
            color: Palette.whiteColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              HeroText(text: "Enter your password"),
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
              SizedBox(
                height: 20,
              ),
              RoundedButton(
                callback: () {},
                padding: EdgeInsets.all(15),
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                size: Size(400, 50),
                background: Colors.white,
                foreground: Colors.black,
                child: Text(
                  "Log In",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {},
                child: Text(
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
