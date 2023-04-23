import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final VoidCallback callback;
  final Color background;
  final Color foreground;
  final Size size;
  final BorderRadiusGeometry borderRadius;
  final EdgeInsetsGeometry padding;
  final dynamic child;
  const RoundedButton({Key? key, required this.callback, required this.borderRadius, required this.padding, this.child, required this.background, required this.foreground, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        splashFactory: NoSplash.splashFactory,
        minimumSize: size,
        backgroundColor: background,
        foregroundColor: foreground,
        padding: padding,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
        ),
      ),
      onPressed: callback,
      child: child
    );
  }
}
