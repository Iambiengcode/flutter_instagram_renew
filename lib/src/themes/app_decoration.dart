import 'package:flutter/material.dart';
import 'package:whoru/src/common/styles.dart';

class AppDecoration {
  final BoxDecoration decoration;
  AppDecoration({@required this.decoration});
  factory AppDecoration.buttonActionCircle(context) {
    if (Theme.of(context).brightness == Brightness.dark) {
      return AppDecoration(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: colorBlack.withOpacity(.75),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(2, 2),
              blurRadius: 2,
            ),
            BoxShadow(
              color: colorBlack.withOpacity(.45),
              offset: Offset(-2, -2),
              blurRadius: 2,
            ),
          ],
        ),
      );
    } else {
      return AppDecoration(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: mC,
          boxShadow: [
            BoxShadow(
              color: mCD,
              offset: Offset(2, 2),
              blurRadius: 2,
            ),
            BoxShadow(
              color: mCL,
              offset: Offset(-2, -2),
              blurRadius: 2,
            ),
          ],
        ),
      );
    }
  }

  factory AppDecoration.buttonActionBorder(context, radius) {
    if (Theme.of(context).brightness == Brightness.dark) {
      return AppDecoration(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: colorBlack.withOpacity(.75),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(2, 2),
              blurRadius: 2,
            ),
            BoxShadow(
              color: colorBlack.withOpacity(.45),
              offset: Offset(-2, -2),
              blurRadius: 2,
            ),
          ],
        ),
      );
    } else {
      return AppDecoration(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: mC,
          boxShadow: [
            BoxShadow(
              color: mCD,
              offset: Offset(2, 2),
              blurRadius: 2,
            ),
            BoxShadow(
              color: mCL,
              offset: Offset(-2, -2),
              blurRadius: 2,
            ),
          ],
        ),
      );
    }
  }

  factory AppDecoration.tabBarDecoration(context) {
    if (Theme.of(context).brightness == Brightness.dark) {
      return AppDecoration(
        decoration: BoxDecoration(
          color: Colors.black,
          boxShadow: [
            BoxShadow(
              offset: Offset(1, 1),
              blurRadius: 1,
            ),
          ],
        ),
      );
    } else {
      return AppDecoration(
        decoration: BoxDecoration(
          color: mCL,
          boxShadow: [
            BoxShadow(
              offset: Offset(1, 1),
              blurRadius: 1,
            ),
          ],
        ),
      );
    }
  }

  factory AppDecoration.inputChatDecoration(context) {
    if (Theme.of(context).brightness == Brightness.dark) {
      return AppDecoration(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            30.0,
          ),
          color: colorBlack.withOpacity(.8),
          boxShadow: [
            BoxShadow(
              color: colorBlack.withOpacity(.45),
              offset: Offset(3, 3),
              blurRadius: 3,
              spreadRadius: -3,
            ),
          ],
        ),
      );
    } else {
      return AppDecoration(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            30.0,
          ),
          color: mCD,
          boxShadow: [
            BoxShadow(
              color: mCL,
              offset: Offset(3, 3),
              blurRadius: 3,
              spreadRadius: -3,
            ),
          ],
        ),
      );
    }
  }
}
