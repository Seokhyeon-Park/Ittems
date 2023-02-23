import 'package:flutter/material.dart';

class PostInfoBox extends StatelessWidget {
  const PostInfoBox({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      child: const Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Your Ittems',
              labelStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xffF8CBA6))
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Price',
              labelStyle: TextStyle(
                color: Colors.black87,
              ),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffF8CBA6))
              ),
            ),
            keyboardType: TextInputType.number,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'link',
              labelStyle: TextStyle(
                color: Colors.black87,
              ),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffF8CBA6))
              ),
            ),
          ),
        ],
      ),
    );
  }
}
