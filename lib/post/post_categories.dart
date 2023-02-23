import 'package:flutter/material.dart';
import './categories_button.dart';


class PostCategories extends StatefulWidget {
  const PostCategories({Key? key}) : super(key: key);

  @override
  State<PostCategories> createState() => _PostCategoriesState();
}

class _PostCategoriesState extends State<PostCategories> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: MediaQuery.of(context).size.width * 0.95,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (c, i){
            return const CategoriesButton(label: 'Sample');
          }
      ),
    );
  }
}
