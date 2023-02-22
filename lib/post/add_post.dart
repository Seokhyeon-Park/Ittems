import 'package:flutter/material.dart';
import './post_img.dart';
import './post_info_box.dart';
import './post_content.dart';

class AddPost extends StatelessWidget {
  const AddPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const cHeader = 0xffF8CBA6;
    double iPaddingValue = 4;
    double imgBoxSize = MediaQuery.of(context).size.width * 0.45;
    double inputSideSize = MediaQuery.of(context).size.width - imgBoxSize - (iPaddingValue * 2);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'New Post',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(cHeader),
      ),
      body: Column(
        children: [
          Row(
            children: [
              PostImg(iPaddingValue: iPaddingValue, imgBoxSize: imgBoxSize),
              PostInfoBox(inputSideSize: inputSideSize),
            ],
          ),
          PostContent(iPaddingValue: iPaddingValue),
        ],
      ),
    );
  }
}
