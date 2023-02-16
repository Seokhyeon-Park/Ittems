import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  const CardContent({
    Key? key,
    required this.title,
    required this.prise,
    required this.contents,
  }) : super(key: key);

  final String title;
  final String prise;
  final String contents;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 6,),
          // DATE 추가
          Text(
            contents,
            style: const TextStyle(color: Colors.black87, fontSize: 15),
          ),
          const Spacer(),
          Row(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  backgroundColor: const Color(0xFF162A49),
                  textStyle: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {},
                child: const Text('Link'),
              ),
              const Spacer(),
              Text(
                '₩$prise',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
