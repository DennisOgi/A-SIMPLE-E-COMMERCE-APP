import 'package:flutter/material.dart';

class NeuBox extends StatelessWidget {
  double height;
  double width;
  Widget child;
  NeuBox({
    super.key,
    required this.height,
    required this.width,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey[300],
          boxShadow: [
            // darker shadow on the bottom right
            BoxShadow(
                color: Colors.grey.shade500,
                blurRadius: 15,
                offset: Offset(5, 5)),

            // lighter shadow on the top left
            BoxShadow(
                color: Colors.white, blurRadius: 15, offset: Offset(-5, -5))
          ]),
      child: child,
    );
  }
}
