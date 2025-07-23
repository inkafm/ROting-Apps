import 'package:flutter/material.dart';
import 'package:topology_app/widgets/reusable_widgets/point_position.dart';

class Topology4Question3 extends StatefulWidget {
  const Topology4Question3({super.key});

  @override
  State<Topology4Question3> createState() => _Topology4Question3State();
}

class _Topology4Question3State extends State<Topology4Question3> {
  bool point1 = false;
  bool wrong1 = false;
  bool wrong2 = false;
  bool wrong3 = false;
  bool wrong4 = false;
  bool wrong5 = false;

  @override
  void initState() {
    super.initState();
  }
  
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
              "assets/images/topology/static/topologi_4.png",
              width: MediaQuery.of(context).size.width,
            ),
          ),
        ),
        // Correct 1
        PointPosition(
          top: 160,
          right: null,
          bottom: null,
          left: 170,
          type: 'correct',
          visible_point: point1,
          visiblePointCallback: (val) => setState(() => point1 = val),
        ),
        // Wrong 1
        PointPosition(
          top: null,
          right: null,
          bottom: 110,
          left: 60,
          type: 'wrong',
          visible_point: wrong1,
          visiblePointCallback: (val) => setState(() => wrong1 = val),
        ),
        // Wrong 2
        PointPosition(
          top: 110,
          right: 165,
          bottom: null,
          left: null,
          type: 'wrong',
          visible_point: wrong2,
          visiblePointCallback: (val) => setState(() => wrong2 = val),
        ),
        // Wrong 3
        PointPosition(
          top: 180,
          right: null,
          bottom: null,
          left: 60,
          type: 'wrong',
          visible_point: wrong3,
          visiblePointCallback: (val) => setState(() => wrong3 = val),
        ),
        // Wrong 4
        PointPosition(
          top: 175,
          right: 55,
          bottom: null,
          left: null,
          type: 'wrong',
          visible_point: wrong4,
          visiblePointCallback: (val) => setState(() => wrong4 = val),
        ),
        // Wrong 5
        PointPosition(
          top: null,
          right: null,
          bottom: 110,
          left: 170,
          type: 'wrong',
          visible_point: wrong5,
          visiblePointCallback: (val) => setState(() => wrong5 = val),
        ),
      ],
    );
  }
}