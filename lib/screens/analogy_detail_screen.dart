import 'package:flutter/material.dart';
import 'package:topology_app/core/data/dinamic_routing_data.dart';
import 'package:topology_app/core/data/static_routing_data.dart';
import 'package:topology_app/core/global.dart';
import 'package:topology_app/widgets/topology_widgets/dinamic_topology_1.dart';
import 'package:topology_app/widgets/topology_widgets/dinamic_topology_2.dart';
import 'package:topology_app/widgets/topology_widgets/dinamic_topology_3.dart';
import 'package:topology_app/widgets/topology_widgets/dinamic_topology_4.dart';
import 'package:topology_app/widgets/topology_widgets/dinamic_topology_5.dart';
import 'package:topology_app/widgets/topology_widgets/dinamic_topology_6.dart';
import 'package:topology_app/widgets/topology_widgets/static_topology_1.dart';
import 'package:topology_app/widgets/topology_widgets/static_topology_2.dart';
import 'package:topology_app/widgets/topology_widgets/static_topology_3.dart';
import 'package:topology_app/widgets/topology_widgets/static_topology_4.dart';
import 'package:topology_app/widgets/topology_widgets/static_topology_5.dart';
import 'package:topology_app/widgets/topology_widgets/static_topology_6.dart';

class AnalogyDetailScreen extends StatelessWidget {
  const AnalogyDetailScreen({
    super.key,
    required this.id,
    required this.type,
  });

  final int id;
  final String type;
  static List static_list = StaticRoutingData.list;
  static List dinamic_list = DinamicRoutingData.list;

  @override
  Widget build(BuildContext context) {
    var color = Global.primaryColor;
    var data = type == 'static'
      ? static_list.firstWhere((val) => val['topology_id'] == id)
      : dinamic_list.firstWhere((val) => val['topology_id'] == id);

    switchContent(id) {
      switch (id) {
        // Static Routing
        case 1:
          return StaticTopology1();
          break;
        case 2:
          return StaticTopology2();
          break;
        case 3:
          return StaticTopology3();
          break;
        case 4:
          return StaticTopology4();
          break;
        case 5:
          return StaticTopology5();
          break;
        case 6:
          return StaticTopology6();
          break;
        
        // Dinamic Routing
        case 11:
          return DinamicTopology1();
          break;
        case 12:
          return DinamicTopology2();
          break;
        case 13:
          return DinamicTopology3();
          break;
        case 14:
          return DinamicTopology4();
          break;
        case 15:
          return DinamicTopology5();
          break;
        case 16:
          return DinamicTopology6();
          break;
        default:
          return Container(
            child: Center(
              child: Text("Konten Masih Kosong"),
            ),
          );
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          data['title'],
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontFamily: 'Ubuntu'
          ),
        ),
        backgroundColor: Color(color),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: switchContent(id),
        ),
      ),
    );
  }
}