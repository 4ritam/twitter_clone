import 'package:flutter/material.dart';

import '../../../themes/palette.dart';

class AuthField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType textInputType;
  final bool obscure;
  final bool autoFocus;
  const AuthField(
      {Key? key,
      required this.controller,
      required this.hintText,
      this.textInputType = TextInputType.text,
      this.obscure = false,
      this.autoFocus = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: TextFormField(
        style: const TextStyle(
          color: Palette.blueColor,
          fontSize: 16,
        ),
        obscureText: obscure,
        keyboardType: textInputType,
        controller: controller,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(
              color: Palette.blueColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                color: Palette.lightPrimary,
              )),
          hintText: hintText,
          labelText: hintText,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
        ),
      ),
    );
  }
}
