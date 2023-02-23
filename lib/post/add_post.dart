import 'package:flutter/material.dart';
import './post_img.dart';
import './post_info_box.dart';
import './post_content.dart';
import './post_categories.dart';

class AddPost extends StatelessWidget {
  const AddPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const cHeader = 0xffF8CBA6;
    double iPaddingValue = 4;
    double imgBoxSize = MediaQuery.of(context).size.width * 0.5;
    double inputSideSize =
        MediaQuery.of(context).size.width - imgBoxSize - (iPaddingValue * 2);

    return Scaffold(
      resizeToAvoidBottomInset: false,
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
        actions: [
          IconButton(
            icon: const Icon(
              Icons.check,
              color: Colors.black,
              size: 26,
            ),
            onPressed: () {

            },
          ),
        ],
      ),
      body: Column(
        children: [
          PostImg(iPaddingValue: iPaddingValue, imgBoxSize: imgBoxSize),
          const PostInfoBox(),
          PostContent(iPaddingValue: iPaddingValue),
          const PostCategories(),
        ],
      ),
    );
  }
}
