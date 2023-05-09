import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/common.dart';
import '../../../constants/constants.dart';
import '../../../themes/palette.dart';
import '../../features.dart';

class LoginVerificationView extends ConsumerStatefulWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => const LoginVerificationView());
  const LoginVerificationView({Key? key}) : super(key: key);

  @override
  ConsumerState<LoginVerificationView> createState() =>
      _LoginVerificationViewState();
}

class _LoginVerificationViewState extends ConsumerState<LoginVerificationView> {
  final TextEditingController emailTextController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() {
    ref.read(authControllerProvider.notifier).login(
          email: emailTextController.text,
          password: passwordController.text,
          context: context,
        );
  }

  @override
  void dispose() {
    super.dispose();
    emailTextController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isLoading = ref.watch(authControllerProvider);

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
      body: isLoading
          ? Loader()
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const HeroText(text: "Enter your password"),
                    AuthField(
                      controller: emailTextController,
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
                      callback: login,
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
