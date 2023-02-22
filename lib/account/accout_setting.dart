import 'package:flutter/material.dart';

class AccountSetting extends StatelessWidget {
  const AccountSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const cHeader = 0xffF8CBA6;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Account Setting',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(cHeader),
      ),
      body: const Text('body임'),
    );
  }
}
