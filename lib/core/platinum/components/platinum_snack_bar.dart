import 'package:flutter/material.dart';

import '../spacing/platinum_padding.dart';
import '../spacing/platinum_size.dart';

class PlatinumSnackBarAction extends SnackBarAction {
  const PlatinumSnackBarAction({
    Key? key,
    required String label,
    required Function() onPressed,
  }) : super(
          key: key,
          disabledTextColor: const Color(0xFF808080),
          label: label,
          onPressed: onPressed,
          textColor: const Color(0xFF080808),
        );
}

abstract class PlatinumSnackBar extends SnackBar {
  PlatinumSnackBar({
    Key? key,
    PlatinumSnackBarAction? action,
    required Color backgroundColor,
    Duration? duration,
    DismissDirection? dismissDirection,
    required Color fontColor,
    IconData? icon,
    Color? iconColor,
    required String message,
  }) : super(
          key: key,
          duration: duration ?? const Duration(milliseconds: 4000),
          dismissDirection: dismissDirection ?? DismissDirection.down,
          behavior: SnackBarBehavior.floating,
          backgroundColor: backgroundColor,
          elevation: 1.0,
          action: action,
          content: Row(
            children: [
              Visibility(
                visible: icon != null,
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: PlatinumPadding.xvi,
                  ),
                  child: Icon(
                    icon,
                    color: iconColor,
                    size: PlatinumSize.h3,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  message,
                  style: TextStyle(
                    color: fontColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 12.0,
                  ),
                ),
              ),
            ],
          ),
        );

  factory PlatinumSnackBar.error({
    Key? key,
    PlatinumSnackBarAction? action,
    required String message,
  }) = _PlatinumSnackBarError;
}

class _PlatinumSnackBarError extends PlatinumSnackBar {
  _PlatinumSnackBarError({
    Key? key,
    PlatinumSnackBarAction? action,
    required String message,
  }) : super(
          key: key,
          message: message,
          duration: const Duration(seconds: 10),
          dismissDirection: action == null ? DismissDirection.down : DismissDirection.none,
          icon: Icons.error,
          iconColor: Colors.red,
          backgroundColor: const Color(0xFFF6D8DA),
          fontColor: const Color(0xFF080808),
          action: action,
        );
}
