import 'package:flutter/material.dart';

class PostImg extends StatelessWidget {
  const PostImg({
    Key? key,
    required this.iPaddingValue,
    required this.imgBoxSize,
  }) : super(key: key);

  final double iPaddingValue;
  final double imgBoxSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: imgBoxSize,
      width: imgBoxSize,
      margin: EdgeInsets.fromLTRB(
          iPaddingValue, iPaddingValue + 2, iPaddingValue, iPaddingValue),

      child: Card(
        elevation: 5,
        child: Container(
          alignment: Alignment.center,
          height: double.infinity,
          width: double.infinity,
          child: const Text(
            'Click',
            style: TextStyle(
              color: Colors.black26,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        )
      ),
    );
  }
}
