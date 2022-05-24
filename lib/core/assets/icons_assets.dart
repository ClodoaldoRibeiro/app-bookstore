import 'package:flutter_svg/flutter_svg.dart';

abstract class IconsAssets {
  static get bookstoreLogoLight {
    return SvgPicture.asset(
      "assets/icons/Bookstore_LOGO_LIGHT.svg",
      height: 60.0,
      width: 60.0,
      allowDrawingOutsideViewBox: true,
    );
  }
}
  