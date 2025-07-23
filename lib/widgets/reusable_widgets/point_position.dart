import 'package:flutter/material.dart';

typedef void VisiblePointCallback(bool param);

class PointPosition extends StatelessWidget {
  const PointPosition({
    super.key,
    required this.type,
    required this.top,
    required this.right,
    required this.bottom,
    required this.left,
    required this.visible_point,
    required this.visiblePointCallback,
  });

  final String type;
  final int? top;
  final int? right;
  final int? bottom;
  final int? left;
  final bool visible_point;
  final VisiblePointCallback visiblePointCallback;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top?.toDouble(),
      right: right?.toDouble(),
      bottom: bottom?.toDouble(),
      left: left?.toDouble(),
      child: InkWell(
        onTap: () => visiblePointCallback(!visible_point),
        child: Container(
          width: 20,
          height: 20,
          // color: type == 'correct' ? Colors.blue : Colors.red,
          child: Visibility(
            visible: visible_point,
            child: Image.asset(
              type == 'correct' ? "assets/icons/correct.png" : "assets/icons/wrong.png",
              width: 25,
            ),
          ),
        )
      ),
    );
  }
}