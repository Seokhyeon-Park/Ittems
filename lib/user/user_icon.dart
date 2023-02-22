import 'package:flutter/material.dart';
import '../account/accout_setting.dart';

class UserIcon extends StatelessWidget {
  const UserIcon({
    Key? key,
    required this.vMargin,
    required this.vImage,
    required this.vHeight,
    required this.vWidth,
  }) : super(key: key);

  final double vMargin;
  final String vImage;
  final double vHeight;
  final double vWidth;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AccountSetting()),
        );
      },
      child: Container(
        height: vHeight,
        width: vWidth,
        margin: EdgeInsets.all(vMargin),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            // borderRadius: BorderRadius.circular(32),
            color: Colors.black12,
            image: DecorationImage(
              image: AssetImage('assets/$vImage'),
              fit: BoxFit.cover,
            ),
            boxShadow: const [BoxShadow(blurRadius: 2)]
        ),
      ),
    );
  }
}
