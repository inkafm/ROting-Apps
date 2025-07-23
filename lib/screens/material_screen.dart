import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:topology_app/core/data/material_data.dart';
import 'package:topology_app/core/global.dart';
import 'package:topology_app/widgets/drawer/material_drawer.dart';
import 'package:topology_app/widgets/material_widgets/material1_screen.dart';
import 'package:topology_app/widgets/material_widgets/material2_screen.dart';
import 'package:topology_app/widgets/material_widgets/material3_screen.dart';
import 'package:topology_app/widgets/material_widgets/material4_screen.dart';
import 'package:topology_app/widgets/material_widgets/material5_screen.dart';
import 'package:topology_app/widgets/material_widgets/material6_screen.dart';
import 'package:topology_app/widgets/material_widgets/material7_screen.dart';
import 'package:topology_app/widgets/material_widgets/material8_screen.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class MaterialScreen extends StatefulWidget {
  const MaterialScreen({super.key});

  @override
  State<MaterialScreen> createState() => _MaterialScreenState();
}

class _MaterialScreenState extends State<MaterialScreen> {
  var color = Global.primaryColor;
  DatabaseReference ref = FirebaseDatabase.instance.ref("progresses");
  late int _content_number = 1;
  late var progress = '1';
  late List _materials;
  late String name = '';
  final _videoPlayerController = YoutubePlayerController(
    params: YoutubePlayerParams(
      mute: false,
      showControls: true,
      showFullscreenButton: true,
      loop: false,
    ),
  );

  List<String> videoIds = [
    "W0GaB1x8C7M",
    "_zj4h6DfUYk",
    "ueZbo_bQHMg",
    "W0GaB1x8C7M",
    "_zj4h6DfUYk",
    "ueZbo_bQHMg",
    "W0GaB1x8C7M",
    "W0GaB1x8C7M",
  ];

  @override
  void initState() {
    super.initState();
    _materials = MaterialData.materials;
    
    _loadData();
    getProgress();
    if (_content_number == 1) _changeVideo();
  }

  void _loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      name = prefs.getString('name') ?? '';
    });
  }

  void _changeVideo() async {
    _videoPlayerController.cueVideoById(videoId: videoIds[0]);
  }

  void _decrementPageNumber() {
    int newNumber = _content_number--;

    setState(() {
      if (_content_number > 1) newNumber;
    });
  }

  void _incrementPageNumber() async {
    int newNumber = _content_number++;

    SharedPreferences prefs = await SharedPreferences.getInstance();
    if ((newNumber + 1) > int.parse(progress)) {
      await prefs.setString('progress', (newNumber + 1).toString());
    }

    setState(() {
      if (_content_number <= 8) newNumber;
      if ((newNumber + 1) > int.parse(progress)) {
        setProgress(newNumber + 1);
      }
    });

    getProgress();
  }

  getProgress() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      progress = prefs.getString('progress') ?? '1';
    });
  }

  // getProgressFromDB() async {
  //   // Test 1
  //   final ref = FirebaseDatabase.instance.ref('progresses');
  //   final snapshot = await ref.child('$name').get();
  //   if (snapshot.exists) {
  //     print("test");
  //     print(snapshot.value);
  //   } else {
  //     print('No data available.');
  //   }

  //   // Test 2
  // }

  switchContent(contentNumber) {
    switch (contentNumber) {
      case 1:
        return Material1Screen();
        break;
      case 2:
        return Material2Screen();
        break;
      case 3:
        return Material3Screen();
        break;
      case 4:
        return Material4Screen();
        break;
      case 5:
        return Material5Screen();
        break;
      case 6:
        return Material6Screen();
        break;
      case 7:
        return Material7Screen();
        break;
      case 8:
        return Material8Screen();
        break;
      default:
        return Container(
          child: Center(
            child: Text("Konten Masih Kosong"),
          ),
        );
    }
  }

  setProgress(param) async {
    DatabaseReference child = ref.child(name);
    await child.set({
      "progress": param
    });
  }

  redirectToHome() {
    return Navigator.pushNamed(
      context, 
      '/home'
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MaterialDrawer(
        materials: _materials,
        content_number: _content_number,
        progress: progress,
        contentNumberCallback: (val) => setState(() => _content_number = val)
      ),
      appBar: AppBar(
        title: Text(
          "Materi",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontFamily: 'Ubuntu'
          ),
        ),
        backgroundColor: Color(color),
        centerTitle: true,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu, color: Colors.white),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              // Text(_materials.length.toString()),
              // Text(_content_number.toString()),
              // Text(progress),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(color),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.zero,
                    topRight: Radius.zero,
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      _materials[_content_number - 1]['title'],
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Nunito',
                        color: Colors.white
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 20,
                  bottom: 10
                ),
                child: switchContent(_content_number),
              ),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 35, vertical: 15),
              //   child: YoutubePlayer( 
              //     controller: _videoPlayerController,
              //     aspectRatio: 16 / 9,
              //   ),
              // ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (_content_number != 1) ElevatedButton(
                      onPressed: () => {
                        _decrementPageNumber(),
                        // _changeVideo(_content_number - 1),
                        _videoPlayerController.cueVideoById(videoId: videoIds[_content_number])
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(color)
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.arrow_left,
                              color: Colors.white,
                              size: 25,
                            ),
                            Text(
                              'Kembali',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: (_content_number + 1) == (_materials.length + 1) ? redirectToHome : () => {
                        _incrementPageNumber(),
                        // _changeVideo(_content_number + 1)
                        _videoPlayerController.cueVideoById(videoId: videoIds[_content_number])
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(color)
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              (_content_number + 1) == (_materials.length + 1) ? 'Selesai' : 'Lanjut',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.arrow_right,
                              color: Colors.white,
                              size: 25,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}