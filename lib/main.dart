import 'package:flutter/material.dart';
import 'body/body.dart';
import './user/user_icon.dart';
import './bottom/exhibition_bottom_sheet.dart';
import './post/add_post.dart';

void main() {
  runApp(
    const MaterialApp(
        home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const cHeader = 0xffF8CBA6;

    return Scaffold(
      appBar: AppBar(
        leading: const UserIcon(
          vMargin: 6,
          vImage: 'DD.png',
          vHeight: 46,
          vWidth: 46,
        ),
        title: const Text(
          'Ittems',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.add,
              size: 38,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AddPost()),
              );
            },
          ),
        ],
        centerTitle: true,
        backgroundColor: const Color(cHeader),
      ),
      body: const Stack(
        children: [
          Body(),
          ExhibitionBottomSheet(),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //
      // ),
    );
  }
}
