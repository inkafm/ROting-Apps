import 'package:flutter/material.dart';

class Topology1Question1 extends StatefulWidget {
  const Topology1Question1({super.key});

  @override
  State<Topology1Question1> createState() => _Topology1Question1State();
}

class _Topology1Question1State extends State<Topology1Question1> {
  bool point1 = false;
  bool point2 = false;
  bool point3 = false;
  bool point4 = false;
  bool point5 = false;
  bool point6 = false;
  bool wrong1 = false;
  bool wrong2 = false;
  bool wrong3 = false;

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
              "assets/images/topology/static/topologi_1.png",
              width: MediaQuery.of(context).size.width,
            ),
          ),
        ),
        // Point Correct 1
        Positioned(
          right: 60,
          top: 130,
          child: InkWell(
            onTap: () => {
              setState(() => point1 = !point1)
            },
            child: Container(
              width: 20,
              height: 20,
              // color: Colors.blue,
              child: Visibility(
                visible: point1,
                child: Image.asset(
                  "assets/icons/correct.png",
                  width: 25,
                ),
              ),
            )
          ),
        ),
        // Point Correct 2
        Positioned(
          right: 80,
          top: 175,
          child: InkWell(
            onTap: () => {
              setState(() => point2 = !point2)
            },
            child: Container(
              width: 20,
              height: 20,
              // color: Colors.blue,
              child: Visibility(
                visible: point2,
                child: Image.asset(
                  "assets/icons/correct.png",
                  width: 25,
                ),
              ),
            )
          ),
        ),
        // Point Correct 3
        Positioned(
          right: 115,
          top: 175,
          child: InkWell(
            onTap: () => {
              setState(() => point3 = !point3)
            },
            child: Container(
              width: 20,
              height: 20,
              // color: Colors.blue,
              child: Visibility(
                visible: point3,
                child: Image.asset(
                  "assets/icons/correct.png",
                  width: 25,
                ),
              ),
            )
          ),
        ),
        // Point Correct 4
        Positioned(
          left: 145,
          top: 175,
          child: InkWell(
            onTap: () => {
              setState(() => point4 = !point4)
            },
            child: Container(
              width: 20,
              height: 20,
              // color: Colors.blue,
              child: Visibility(
                visible: point4,
                child: Image.asset(
                  "assets/icons/correct.png",
                  width: 25,
                ),
              ),
            )
          ),
        ),
        // Point Correct 5
        Positioned(
          right: 55,
          bottom: 115,
          child: InkWell(
            onTap: () => {
              setState(() => point5 = !point5)
            },
            child: Container(
              width: 20,
              height: 20,
              // color: Colors.blue,
              child: Visibility(
                visible: point5,
                child: Image.asset(
                  "assets/icons/correct.png",
                  width: 25,
                ),
              ),
            )
          ),
        ),
        // Point Correct 6
        Positioned(
          right: 165,
          bottom: 115,
          child: InkWell(
            onTap: () => {
              setState(() => point6 = !point6)
            },
            child: Container(
              width: 20,
              height: 20,
              // color: Colors.blue,
              child: Visibility(
                visible: point6,
                child: Image.asset(
                  "assets/icons/correct.png",
                  width: 25,
                ),
              ),
            )
          ),
        ),
        // Point Wrong 1
        Positioned(
          left: 60,
          top: 130,
          child: InkWell(
            onTap: () => {
              setState(() => wrong1 = !wrong1)
            },
            child: Container(
              width: 20,
              height: 20,
              // color: Colors.blue,
              child: Visibility(
                visible: wrong1,
                child: Image.asset(
                  "assets/icons/wrong.png",
                  width: 25,
                ),
              ),
            )
          ),
        ),
        // Point Wrong 2
        Positioned(
          left: 65,
          top: 175,
          child: InkWell(
            onTap: () => {
              setState(() => wrong2 = !wrong2)
            },
            child: Container(
              width: 20,
              height: 20,
              // color: Colors.blue,
              child: Visibility(
                visible: wrong2,
                child: Image.asset(
                  "assets/icons/wrong.png",
                  width: 25,
                ),
              ),
            )
          ),
        ),
        // Point Wrong 3
        Positioned(
          left: 65,
          bottom: 115,
          child: InkWell(
            onTap: () => {
              setState(() => wrong3 = !wrong3)
            },
            child: Container(
              width: 20,
              height: 20,
              // color: Colors.blue,
              child: Visibility(
                visible: wrong3,
                child: Image.asset(
                  "assets/icons/wrong.png",
                  width: 25,
                ),
              ),
            )
          ),
        ),
      ],
    );
  }
}