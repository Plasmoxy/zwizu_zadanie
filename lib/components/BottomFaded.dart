import 'package:flutter/material.dart';

class BottomFaded extends StatelessWidget {
  final Widget? child;

  const BottomFaded({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (rect) {
        return LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.black, Colors.transparent],
        ).createShader(Rect.fromLTRB(0, 255, rect.width, rect.height));
      },
      blendMode: BlendMode.dstIn,
      child: this.child,
    );
  }
}
