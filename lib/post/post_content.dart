import 'package:flutter/material.dart';

class PostContent extends StatelessWidget {
  const PostContent({
    Key? key,
    required this.iPaddingValue,
  }) : super(key: key);

  final double iPaddingValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(
          iPaddingValue, iPaddingValue + 2, iPaddingValue, iPaddingValue),
      child: const Card(
          // elevation: 5,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              maxLines: 8, //or null
              decoration: InputDecoration.collapsed(hintText: "Explain your Iitems"),
            ),
          ),
      ),
    );
  }
}
