import 'package:flutter/material.dart';
import 'package:topology_app/widgets/reusable_widgets/point_position.dart';

class Topology2Question1 extends StatefulWidget {
  const Topology2Question1({super.key});

  @override
  State<Topology2Question1> createState() => _Topology2Question1State();
}

class _Topology2Question1State extends State<Topology2Question1> {
  bool point1 = false;
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
            "assets/images/topology/static/topologi_2.png",
            width: MediaQuery.of(context).size.width,
          ),
        ),
        // Correct 1
        PointPosition(
          top: 90,
          right: 110,
          bottom: null,
          left: null,
          type: 'correct',
          visible_point: point1,
          visiblePointCallback: (val) => setState(() => point1 = val),
        ),
         // Wrong 1
        PointPosition(
          top: 90,
          right: null,
          bottom: null,
          left: 115,
          type: 'wrong',
          visible_point: wrong1,
          visiblePointCallback: (val) => setState(() => wrong1 = val),
        ),
        // Wrong 2
        PointPosition(
          top: 95,
          right: null,
          bottom: null,
          left: 168,
          type: 'wrong',
          visible_point: wrong2,
          visiblePointCallback: (val) => setState(() => wrong2 = val),
        ),
        // Wrong 3
        PointPosition(
          top: 140,
          right: null,
          bottom: null,
          left: 90,
          type: 'wrong',
          visible_point: wrong3,
          visiblePointCallback: (val) => setState(() => wrong3 = val),
        ),
        // Wrong 4
        PointPosition(
          top: 140,
          right: 90,
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