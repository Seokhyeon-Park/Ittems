import 'package:flutter/material.dart';
import 'sliding_card.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  PageController? pageController;
jd
  @override
  void initState() {
    super.initState();
    pageController = PageController(viewportFraction: 0.85);
  }

  @override
  void dispose() {
    super.dispose();
    pageController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.65,
      child: PageView(
        controller: pageController,
        children: const [
          SlidingCard(
            title: '땅',
            prise: '1,000,000,000,000',
            assetName: 'sample.jpg',
            contents: '그냥 땅을 다 사버림 ㅋㅋ',
          ),
          SlidingCard(
            title: 'iPod Classic 5th',
            prise: '220,000',
            assetName: 'sample2.png',
            contents: '이쁜 쓰레기 삼',
          ),
        ],
      )
    );
  }
}
