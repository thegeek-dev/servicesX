import 'package:services/custom/BorderIcon.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:services/utils/constants.dart';

class CardElements extends StatelessWidget {
  final Widget? child;
  final double? height;
  final Icons? icon;

  const CardElements({Key? key, this.height, this.icon, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: height,
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: Center(child: child));
  }
}
