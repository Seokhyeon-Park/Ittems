import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PostImg extends StatefulWidget {
  const PostImg({
    Key? key,
    required this.iPaddingValue,
    required this.imgBoxSize,
  }) : super(key: key);

  final double iPaddingValue;
  final double imgBoxSize;

  @override
  State<PostImg> createState() => _PostImgState();
}

class _PostImgState extends State<PostImg> {
  var pickedImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.imgBoxSize,
      width: widget.imgBoxSize,
      margin: EdgeInsets.fromLTRB(
          widget.iPaddingValue, widget.iPaddingValue + 2, widget.iPaddingValue, widget.iPaddingValue),

      child: GestureDetector(
        onTap: () async {
          var picker = ImagePicker();
          var image = await picker.pickImage(source: ImageSource.gallery);
          if(image != null) {
            setState(() {
              pickedImage = File(image.path);
            });
          }
        },
        child: Card(
          elevation: 5,
          child: Container(
            alignment: Alignment.center,
            height: double.infinity,
            width: double.infinity,

            child: pickedImage == null ?
              const Text(
                'Click',
                style: TextStyle(
                  color: Colors.black26,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ) : Image.file(
                pickedImage,
                fit: BoxFit.fill,
              ),
          ),
        ),
      ),
    );
  }
}
