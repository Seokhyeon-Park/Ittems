import 'package:flutter/material.dart';

class BottomSheetHeader extends StatelessWidget {
  final double fontSize;
  final double topMargin;

  const BottomSheetHeader({
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
