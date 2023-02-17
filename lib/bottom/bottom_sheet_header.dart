import 'package:flutter/material.dart';

class BottomSheetHaeder extends StatelessWidget {
  final double fontSize;
  final double topMargin;

  const BottomSheetHaeder({
    Key? key,
    required this.fontSize,
    required this.topMargin,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: topMargin,
      child: Text(
        'header text',
        style: TextStyle(
          color: Colors.white,
          fontSize: fontSize,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
