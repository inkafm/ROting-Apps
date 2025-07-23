import 'package:flutter/material.dart';
import 'package:topology_app/widgets/reusable_widgets/point_position.dart';

class Topology1Question2 extends StatefulWidget {
  const Topology1Question2({super.key});

  @override
  State<Topology1Question2> createState() => _Topology1Question2State();
}

class _Topology1Question2State extends State<Topology1Question2> {
  bool point1 = false;
  bool point2 = false;
  bool point3 = false;
  bool point4 = false;
  bool point5 = false;
  bool point6 = false;
  bool wrong1 = false;
  bool wrong2 = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 500,
          height: 350,
          child: Padding(
            padding: EdgeInsets.only(
              top: 20,
            ),
            child: Image.asset(
              "assets/images/topology/static/topologi_1.png",
              width: MediaQuery.of(context).size.width,
            ),
          ),
        ),
        // Correct 1
        PointPosition(
          top: 135,
          right: null,
          bottom: null,
          left: 60,
          type: 'correct',
          visible_point: point1,
          visiblePointCallback: (val) => setState(() => point1 = val),
        ),
        // Correct 2
        PointPosition(
          top: 135,
          right: 60,
          bottom: null,
          left: null,
          type: 'correct',
          visible_point: point2,
          visiblePointCallback: (val) => setState(() => point2 = val),
        ),
        // Correct 3
        PointPosition(
          top: 175,
          right: null,
          bottom: null,
          left: 85,
          type: 'correct',
          visible_point: point3,
          visiblePointCallback: (val) => setState(() => point3 = val),
        ),
        // Correct 4
        PointPosition(
          top: 175,
          right: 85,
          bottom: null,
          left: null,
          type: 'correct',
          visible_point: point4,
          visiblePointCallback: (val) => setState(() => point4 = val),
        ),
        // Correct 5
        PointPosition(
          top: null,
          right: null,
          bottom: 110,
          left: 60,
          type: 'correct',
          visible_point: point5,
          visiblePointCallback: (val) => setState(() => point5 = val),
        ),
        // Correct 6
        PointPosition(
          top: null,
          right: 60,
          bottom: 110,
          left: null,
          type: 'correct',
          visible_point: point6,
          visiblePointCallback: (val) => setState(() => point6 = val),
        ),
        // Wrong 1
        PointPosition(
          top: 175,
          right: null,
          bottom: null,
          left: 170,
          type: 'wrong',
          visible_point: wrong1,
          visiblePointCallback: (val) => setState(() => wrong1 = val),
        ),
        // Wrong 2
        PointPosition(
          top: null,
          right: null,
          bottom: 110,
          left: 170,
          type: 'wrong',
          visible_point: wrong2,
          visiblePointCallback: (val) => setState(() => wrong2 = val),
        ),
      ],
    );
  }
}