import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:twitter/constants/assets_constants.dart';
import 'package:twitter/themes/palette.dart';

class UIConstants {
  static AppBar appBar(Widget? leading) {
    if (leading == null) {
      return AppBar(
        title: SvgPicture.asset(
          AssetsConstants.twitterLogo,
          colorFilter: ColorFilter.mode(Palette.blueColor, BlendMode.srcIn),
          height: 30,
        ),
        centerTitle: true,
      );
    } else {
      return AppBar(
        leading: leading,
        title: SvgPicture.asset(
          AssetsConstants.twitterLogo,
          colorFilter: ColorFilter.mode(Palette.blueColor, BlendMode.srcIn),
          semanticsLabel: "Twitter Logo",
          height: 30,
        ),
        centerTitle: true,
      );
    }
  }
}
