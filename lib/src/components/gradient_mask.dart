import 'package:flutter/material.dart';

class GradientMask extends StatelessWidget {
  final List<Color> colors;
  final Widget child;
  const GradientMask({
    required this.colors,
    required this.child,
  });
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return LinearGradient(
          begin: FractionalOffset.topLeft,
          end: FractionalOffset.bottomRight,
          colors: colors,
        ).createShader(bounds);
      },
      child: child,
      blendMode: BlendMode.srcATop,
    );
  }
}
