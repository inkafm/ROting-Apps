import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:topology_app/core/data/analogy/dinamic_data.dart';
import 'package:topology_app/core/data/analogy/static_data.dart';
import 'package:topology_app/core/global.dart';
import 'package:topology_app/screens/analogy_detail_screen.dart';
import 'package:topology_app/widgets/drawer/analogy_drawer.dart';

class AnalogyScreen extends StatefulWidget {
  const AnalogyScreen({super.key});

  @override
  State<AnalogyScreen> createState() => _AnalogyScreenState();
}

class _AnalogyScreenState extends State<AnalogyScreen> {
  var color = Global.primaryColor;
  String _analogy_type = 'static';
  late List _list_analogy;
  late String name = '';

  @override
  void initState() {
    if (_analogy_type == 'static') {
      _list_analogy = StaticData.list;
    } else {
      _list_analogy = DinamicData.list;
    }

    _loadData();
    super.initState();
  }

  void _loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      name = prefs.getString('name') ?? '';
    });
  }

  onChangeType(param) {
    setState(() {
      _analogy_type = param;
      if (param == 'static') {
        _list_analogy = StaticData.list;
      } else {
        _list_analogy = DinamicData.list;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AnalogyDrawer(
        type: _analogy_type,
        analogyTypeCallback: (val) => onChangeType(val)
      ),
      appBar: AppBar(
        title: Text(
          "Latihan",
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                      _analogy_type == 'static' ? 'Static Routing' : 'Dinamic Routing',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Nunito',
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.1,
                    mainAxisSpacing: 25
                  ),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: _list_analogy.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AnalogyDetailScreen(
                              id: _list_analogy[index]['id'],
                              type: _analogy_type,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                          bottom: 5,
                          left: 15,
                          right: 15
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(color),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              _list_analogy[index]['title'],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Ubuntu',
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}