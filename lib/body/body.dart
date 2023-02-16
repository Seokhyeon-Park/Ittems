import 'package:flutter/material.dart';
import 'sliding_card.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  PageController? bodyPageController;

  @override
  void initState() {
    super.initState();
    bodyPageController = PageController(viewportFraction: 0.85);
  }

  @override
  void dispose() {
    super.dispose();
    bodyPageController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const cBody = 0xffFFE7CC;

    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.7,
          color: const Color(cBody),
          child: PageView(
            controller: bodyPageController,
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
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.10,
          color: const Color(cBody),
        )
      ],
    );
  }
}
