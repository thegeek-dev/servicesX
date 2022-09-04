import 'package:flutter/material.dart';

/* Widget addVerticalSpace(double height) {
  return SizedBox(
    width: double.infinity,
    height: height,
    child:
        const DecoratedBox(decoration: const BoxDecoration(color: Colors.grey)),
  );
} */

Widget addVerticalline(double height) {
  return Container(
    color: Colors.grey,
    child: SizedBox(
      width: double.infinity,
      height: height,
    ),
  );
}

Widget addline(double width, double height) {
  return Container(
    height: height,
    width: width,
    color: Colors.grey,
  );
}

Widget addVerticalSpace(double height) {
  return Container(
    child: SizedBox(
      width: double.infinity,
      height: height,
    ),
  );
}

Widget addHorizontalSpace(double width) {
  return SizedBox(width: width);
}
