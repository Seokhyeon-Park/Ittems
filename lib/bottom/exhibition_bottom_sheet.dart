import 'dart:ui';
import 'bottom_menu_button.dart';
import 'bottom_sheet_header.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

const double minHeight = 125;

const double iconStartSize = 44;
const double iconEndSize = 120;
const double iconStartMarginTop = 36;
const double iconEndMarginTop = 80;
const double iconsVerticalSpacing = 24;
const double iconsHorizontalSpacing = 16;

class ExhibitionBottomSheet extends StatefulWidget {
  const ExhibitionBottomSheet({Key? key}) : super(key: key);

  @override
  State<ExhibitionBottomSheet> createState() => _BottomSheetState();
}

class _BottomSheetState extends State<ExhibitionBottomSheet> with SingleTickerProviderStateMixin {
  AnimationController? _controller;

  double get maxHeight => MediaQuery.of(context).size.height;

  double? get bottomHeaderTopMargin => lerp(20, 20 + MediaQuery.of(context).padding.top);
  double? get bottomHeaderFontSize => lerp(14, 24);

  double? get itemBorderRadius => lerp(8, 24);
  double? get iconSize => lerp(iconStartSize, iconEndSize);

  double? lerp(double min, double max) => lerpDouble(min, max, _controller!.value);

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

  double iconTopMargin(int index) => lerp(iconStartMarginTop, iconEndMarginTop + index * (iconsVerticalSpacing + iconEndSize))! + bottomHeaderTopMargin!;
  double? iconLeftMargin(int index) => lerp(index * (iconsHorizontalSpacing + iconStartSize), 0);


  @override
  Widget build(BuildContext context) {
    const cBottomSheet = 0xFF162A49;
    // double minHeight = MediaQuery.of(context).size.height * 0.15;

    return AnimatedBuilder(
      builder: (context, child) {
        return Positioned(
          height: lerp(minHeight, maxHeight),
          left: 0,
          right: 0,
          bottom: 0,
          child: GestureDetector(
            onTap: _toggle,
            onVerticalDragUpdate: _handleDragUpdate,
            onVerticalDragEnd: _handleDragEnd,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              decoration: const BoxDecoration(
                  color: Color(cBottomSheet),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(22))
              ),
              child: Stack(
                children: [
                  const BottomMenuButton(),
                  BottomSheetHeader(
                    fontSize: bottomHeaderFontSize!,
                    topMargin: bottomHeaderTopMargin!,
                  ),
                  for(Event event in events) _buildIcon(event),
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
    _controller!.fling(velocity: isOpen ? -2 : 2); //<-- ...snap the sheet in proper direction
  }

  void _handleDragUpdate(DragUpdateDetails details) {
    _controller!.value -= details.primaryDelta! / maxHeight; //<-- Update the _controller.value by the movement done by user.
  }

  void _handleDragEnd(DragEndDetails details) {
    if (_controller!.isAnimating ||
        _controller!.status == AnimationStatus.completed) return;

    final double flingVelocity =
        details.velocity.pixelsPerSecond.dy / maxHeight; //<-- calculate the velocity of the gesture

    if (flingVelocity < 0.0)
      _controller!.fling(velocity: math.max(2.0, -flingVelocity)); //<-- either continue it upwards
    else if (flingVelocity > 0.0)
      _controller!.fling(velocity: math.min(-2.0, -flingVelocity)); //<-- or continue it downwards
    else
      _controller!.fling(velocity: _controller!.value < 0.5 ? -2.0 : 2.0); //<-- or just continue to whichever edge is closer
  }

  Widget _buildIcon(Event event) {
    int index = events.indexOf(event);

    return Positioned(
      height: iconSize,
      width: iconSize,
      top: iconTopMargin(index),
      left: iconLeftMargin(index),
      child: ClipRRect(
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(itemBorderRadius!),
          right: Radius.circular(itemBorderRadius!),
        ),
        child: Image.asset(
          'assets/${event.assetName}',
          fit: BoxFit.cover,
          alignment: Alignment(lerp(1, 0)!, 0),
        ),
      ),
    );
  }

  final List<Event> events = [
    Event('sample.jpg', 'Shenzhen GLOBAL DESIGN AWARD 2018', '4.20-30'),
    Event('sample2.png', 'Shenzhen GLOBAL DESIGN AWARD 2018', '4.20-30'),
  ];
}

class Event {
  final String assetName;
  final String title;
  final String date;

  Event(this.assetName, this.title, this.date);
}
