import 'package:again_insta/body/card_content.dart';
import 'package:flutter/material.dart';

class SlidingCard extends StatelessWidget {
  const SlidingCard({
    Key? key,
    required this.title,
    required this.prise,
    required this.assetName,
    required this.contents,
  }) : super(key: key);

  final String title;
  final String prise;
  final String assetName;
  final String contents;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 24),
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.45,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(22)),
              image: DecorationImage(
                image: AssetImage('assets/$assetName'),
                fit: BoxFit.cover
              )
            ),
            child: Align(
              alignment: Alignment.bottomRight,

              child: IconButton(
                icon: const Icon(
                  Icons.favorite_border,
                  size: 28,
                ),
                color: Colors.white,
                onPressed: () {

                },
              ),
            )
          ),
          // const SizedBox(height: 8,),
          Expanded(
            child: CardContent(title: title, prise: prise, contents: contents,),
          )
        ],
      ),
    );
  }
}
