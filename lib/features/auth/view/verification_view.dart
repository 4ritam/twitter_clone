import 'package:flutter/material.dart';
import 'package:twitter/constants/constants.dart';

class VerificationView extends StatefulWidget {
  static route() => MaterialPageRoute(builder: (context) => const VerificationView());
  const VerificationView({Key? key}) : super(key: key);

  @override
  State<VerificationView> createState() => _VerificationViewState();
}

class _VerificationViewState extends State<VerificationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIConstants.appBar(null),
    );
  }
}
