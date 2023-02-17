import 'dart:ui';
import 'bottom_menu_button.dart';
import 'package:flutter/material.dart';

const double minHeight = 90;

class ExhibitionBottomSheet extends StatefulWidget {
  const ExhibitionBottomSheet({Key? key}) : super(key: key);

  @override
  State<ExhibitionBottomSheet> createState() => _BottomSheetState();
}

class _BottomSheetState extends State<ExhibitionBottomSheet> with SingleTickerProviderStateMixin {
  AnimationController? _controller;

  double get maxHeight => MediaQuery.of(context).size.height;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller?.dispose();
  }

  double? lerp(double min, double max) => lerpDouble(min, max, _controller!.value);

  @override
  Widget build(BuildContext context) {
    const cBottomSheet = 0xFF162A49;

    return AnimatedBuilder(
      builder: (context, child) {
        return Positioned(
          height: lerp(minHeight, maxHeight),
          left: 0,
          right: 0,
          bottom: 0,
          child: GestureDetector(
            onTap: _toggle,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              decoration: const BoxDecoration(
                  color: Color(cBottomSheet),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(22))
              ),
              child: const Stack(
                children: [
                  BottomMenuButton(),
                ],
              ),
            ),
          ),
        );
      },
      animation: _controller!,
    );
  }

  void _toggle() {
    final bool isOpen = _controller?.status == AnimationStatus.completed;
    _controller?.fling(velocity: isOpen ? -2 : 2); //<-- ...snap the sheet in proper direction
  }
}
