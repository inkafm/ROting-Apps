import 'package:flutter/material.dart';
import 'package:topology_app/widgets/reusable_widgets/point_position.dart';

class Topology3Question2 extends StatefulWidget {
  const Topology3Question2({super.key});

  @override
  State<Topology3Question2> createState() => _Topology3Question2State();
}

class _Topology3Question2State extends State<Topology3Question2> {
  bool point1 = false;
  bool point2 = false;
  bool wrong1 = false;
  bool wrong2 = false;
  bool wrong3 = false;
  bool wrong4 = false;
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 20,
          )
          ,
          child: Image.asset(
            "assets/images/topology/static/topologi_3.png",
            width: MediaQuery.of(context).size.width,
          ),
        ),
        // Correct 1
        PointPosition(
          top: 95,
          right: null,
          bottom: null,
          left: 80,
          type: 'correct',
          visible_point: point1,
          visiblePointCallback: (val) => setState(() => point1 = val),
        ),
        // Correct 2
        PointPosition(
          top: 95,
          right: 85,
          bottom: null,
          left: null,
          type: 'correct',
          visible_point: point2,
          visiblePointCallback: (val) => setState(() => point2 = val),
        ),
        // Wrong 1
        PointPosition(
          top: 110,
          right: null,
          bottom: null,
          left: 60,
          type: 'wrong',
          visible_point: wrong1,
          visiblePointCallback: (val) => setState(() => wrong1 = val),
        ),
        // Wrong 2
        PointPosition(
          top: 110,
          right: 60,
          bottom: null,
          left: null,
          type: 'wrong',
          visible_point: wrong2,
          visiblePointCallback: (val) => setState(() => wrong2 = val),
        ),
        // Wrong 3
        PointPosition(
          top: 150,
          right: null,
          bottom: null,
          left: 60,
          type: 'wrong',
          visible_point: wrong3,
          visiblePointCallback: (val) => setState(() => wrong3 = val),
        ),
        // Wrong 4
        PointPosition(
          top: 150,
          right: 60,
          bottom: null,
          left: null,
          type: 'wrong',
          visible_point: wrong4,
          visiblePointCallback: (val) => setState(() => wrong4 = val),
        ),
      ],
    );
  }
}