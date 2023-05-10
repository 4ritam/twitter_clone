import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/common.dart';
import '../../../constants/constants.dart';
import '../../../themes/palette.dart';
import '../auth.dart';

class SignUpView extends ConsumerStatefulWidget {
  static route() => MaterialPageRoute(builder: (context) => const SignUpView());
  const SignUpView({super.key});

  @override
  ConsumerState<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends ConsumerState<SignUpView> {
  bool email = false;
  final TextEditingController nameTextController = TextEditingController();
  final TextEditingController emailTextController = TextEditingController();
  final TextEditingController dateOfBirthController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void onSignup() {
    ref.read(authControllerProvider.notifier).signup(
          name: nameTextController.text,
          email: emailTextController.text,
          password: passwordController.text,
          context: context,
        );
  }

  @override
  void dispose() {
    super.dispose();
    emailTextController.dispose();
    nameTextController.dispose();
    dateOfBirthController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = ref.watch(authControllerProvider);
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
                    controller: emailTextController,
                    hintText: "email",
                  ),
                  AuthField(
                    textInputType: TextInputType.text,
                    obscure: true,
                    controller: passwordController,
                    hintText: "password",
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
                callback: onSignup,
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
