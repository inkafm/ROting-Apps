import 'package:flutter/material.dart';
import 'package:topology_app/widgets/reusable_widgets/point_position.dart';

class Dinamic6Question4 extends StatefulWidget {
  const Dinamic6Question4({super.key});

  @override
  State<Dinamic6Question4> createState() => _Dinamic6Question4State();
}

class _Dinamic6Question4State extends State<Dinamic6Question4> {
  bool point1 = false;
  bool point2 = false;
  bool wrong1 = false;
  bool wrong2 = false;
  bool wrong3 = false;
  bool wrong4 = false;
  bool wrong5 = false;
  
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
              "assets/images/topology/static/topologi_6.png",
              width: MediaQuery.of(context).size.width,
            ),
          ),
        ),
        // Correct 1
        PointPosition(
          top: null,
          right: null,
          bottom: 157,
          left: 170,
          type: 'correct',
          visible_point: point1,
          visiblePointCallback: (val) => setState(() => point1 = val),
        ),
        // Correct 2
        PointPosition(
          top: null,
          right: null,
          bottom: 75,
          left: 170,
          type: 'correct',
          visible_point: point2,
          visiblePointCallback: (val) => setState(() => point2 = val),
        ),
        // Wrong 1
        PointPosition(
          top: 130,
          right: null,
          bottom: null,
          left: 65,
          type: 'wrong',
          visible_point: wrong1,
          visiblePointCallback: (val) => setState(() => wrong1 = val),
        ),
        // Wrong 2
        PointPosition(
          top: 130,
          right: null,
          bottom: null,
          left: 168,
          type: 'wrong',
          visible_point: wrong2,
          visiblePointCallback: (val) => setState(() => wrong2 = val),
        ),
        // Wrong 3
        PointPosition(
          top: 130,
          right: 65,
          bottom: null,
          left: null,
          type: 'wrong',
          visible_point: wrong3,
          visiblePointCallback: (val) => setState(() => wrong3 = val),
        ),
        // Wrong 4
        PointPosition(
          top: null,
          right: null,
          bottom: 120,
          left: 168,
          type: 'wrong',
          visible_point: wrong4,
          visiblePointCallback: (val) => setState(() => wrong4 = val),
        ),
        // Wrong 5
        PointPosition(
          top: null,
          right: 65,
          bottom: 150,
          left: null,
          type: 'wrong',
          visible_point: wrong5,
          visiblePointCallback: (val) => setState(() => wrong5 = val),
        ),
      ],
    );
  }
}