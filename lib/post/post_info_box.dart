import 'package:flutter/material.dart';

class PostInfoBox extends StatelessWidget {
  const PostInfoBox({
    Key? key,
    required this.inputSideSize,
  }) : super(key: key);

  final double inputSideSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: inputSideSize,
      child: const Column(
        children: [
          TextField(
            decoration: InputDecoration(
                labelText: 'Ittems',
                labelStyle: TextStyle(
                  color: Colors.orangeAccent,
                  fontWeight: FontWeight.bold,
                )
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Price',
              labelStyle: TextStyle(
                color: Colors.black87,
              ),
            ),
            keyboardType: TextInputType.number,
          ),
          TextField(
            decoration: InputDecoration(
                labelText: 'link',
                labelStyle: TextStyle(
                  color: Colors.black87,
                )
            ),
          ),
        ],
      ),
    );
  }
}
