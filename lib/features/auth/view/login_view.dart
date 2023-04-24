import 'package:flutter/material.dart';
import 'package:twitter/common/common.dart';
import 'package:twitter/constants/ui_constants.dart';
import 'package:twitter/features/auth/widgets/widgets.dart';
import 'package:twitter/themes/palette.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final userTextController = TextEditingController();
  final AppBar appBar = UIConstants.appBar(
    IconButton(
      highlightColor: Colors.transparent,
      onPressed: (){},
      icon: const Icon(
        Icons.close,
        color: Palette.whiteColor,
      ),
    )
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column (
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: HeroText(text: "To get started, first enter your phone, email address or @username"),
              ),
              AuthField(controller: userTextController, hintText: "Phone, email address, or username")
            ],
          ),
        )
      ),
      bottomNavigationBar: BottomAppBar(
        color: Palette.backgroundColor,
        padding: EdgeInsets.only(
          top: 5,
          bottom: MediaQuery.of(context).viewInsets.bottom + 15,
          left: 15,
          right: 15
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.transparent,
                child: const Text(
                      "Forgot password?",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                    ),
              ),
            ),
            // RoundedButton(
            //   callback: () { },
            //   borderRadius: const BorderRadius.all(Radius.circular(30)),
            //   padding: const EdgeInsets.all(5),
            //   background: Palette.backgroundColor,
            //   foreground: Palette.whiteColor,
            //   size: const Size(0, 0),
            //   child: const Text(
            //     "Forgot password?",
            //     style: TextStyle(
            //       fontSize: 20,
            //       fontWeight: FontWeight.w600
            //     ),
            //   ),
            // ),
            RoundedButton(
              callback: () { },
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
              background: Palette.whiteColor,
              foreground: Palette.backgroundColor,
              size: const Size(0, 0),
              child: const Text(
                "Next",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}
