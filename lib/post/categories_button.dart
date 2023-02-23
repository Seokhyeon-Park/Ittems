import 'package:flutter/material.dart';

class CategoriesButton extends StatefulWidget {
  const CategoriesButton({
    Key? key,
    required this.label
  }) : super(key: key);

  final String label;

  @override
  State<CategoriesButton> createState() => _CategoriesButtonState();
}

class _CategoriesButtonState extends State<CategoriesButton> {
  bool _hasBeenPressed = false;
  static const cButton = 0xffF8CBA6;
  double bMargin = 4;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(bMargin, 0, bMargin, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: _hasBeenPressed ? const Color(cButton) : Colors.white,
              foregroundColor: _hasBeenPressed ? Colors.black : Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22),
              )
            ),
            onPressed: () {
              setState(() {
                _hasBeenPressed = !_hasBeenPressed;
              });
            },
            child: Text(widget.label),
          ),
        ],
      ),
    );
  }
}
