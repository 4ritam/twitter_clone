import 'package:flutter/material.dart';
import 'package:twitter/common/common.dart';
import 'package:twitter/constants/constants.dart';
import 'package:twitter/features/auth/widgets/widgets.dart';
import 'package:twitter/themes/palette.dart';

class SignUpView extends StatefulWidget {
  static route() => MaterialPageRoute(builder: (context) => const SignUpView());
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  bool email = false;
  final TextEditingController userTextController = TextEditingController();
  final TextEditingController nameTextController = TextEditingController();
  final TextEditingController dateOfBirthTextController =
      TextEditingController();
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
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: HeroText(text: "Create Your Account"),
            ),
            AuthField(
              textInputType: TextInputType.name,
              controller: nameTextController,
              hintText: "Name",
            ),
            AuthField(
              textInputType: TextInputType.phone,
              controller: userTextController,
              hintText: "Phone",
            ),
            AuthField(
              textInputType: TextInputType.datetime,
              controller: userTextController,
              hintText: "Date of Birth",
            ),
          ],
        ),
      )),
      bottomNavigationBar: BottomAppBar(
          color: Palette.backgroundColor,
          padding: EdgeInsets.only(
              top: 5,
              bottom: MediaQuery.of(context).viewInsets.bottom + 15,
              left: 15,
              right: 15),
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
                    "Email",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              RoundedButton(
                callback: () {},
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
                background: Palette.whiteColor,
                foreground: Palette.backgroundColor,
                size: const Size(0, 0),
                child: const Text(
                  "Next",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          )),
    );
  }
}
