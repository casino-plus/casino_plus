import 'dart:math';

import 'package:flutter/material.dart';

class FlipView extends StatefulWidget {
  @override
  _FlipViewState createState() => _FlipViewState();
}

class _FlipViewState extends State<FlipView>
    with SingleTickerProviderStateMixin {
  bool _isFront = true;

  @override
  void initState() {
    super.initState();
  }

  Widget _frontCard() {
    return Container(
      key: const ValueKey(true),
      color: Colors.orangeAccent,
      width: 50,
      height: 50,
      child: const Center(
          child: Text(
        'Front',
        style: TextStyle(color: Colors.white, fontSize: 20),
      )),
    );
  }

  Widget _rearCard() {
    return Container(
      key: const ValueKey(false),
      color: Colors.orange,
      width: 50,
      height: 50,
      child: const Center(
          child: Text(
        'Rear',
        style: TextStyle(color: Colors.white, fontSize: 20),
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isFront = !_isFront;
        });
      },
      child: AnimatedSwitcher(
        child: _isFront ? _frontCard() : _rearCard(),
        duration: const Duration(milliseconds: 500),
        transitionBuilder: (Widget child, Animation<double> animation) {
          final rotate = Tween(begin: pi, end: 0.0).animate(animation);

          return AnimatedBuilder(
              animation: rotate,
              child: child,
              builder: (BuildContext context, Widget? child) {
                final angle = (ValueKey(_isFront) != widget.key)
                    ? min(rotate.value, pi / 2)
                    : rotate.value;
                return Transform(
                  transform: Matrix4.rotationY(angle),
                  child: child,
                  alignment: Alignment.center,
                );
              });
        },
        switchInCurve: Curves.linear,
        switchOutCurve: Curves.linear,
      ),
    );
  }
}
