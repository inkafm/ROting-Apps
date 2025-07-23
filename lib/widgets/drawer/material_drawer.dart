import 'package:flutter/material.dart';
import 'package:topology_app/core/global.dart';

typedef void Callback(int val);

class MaterialDrawer extends StatelessWidget {
  const MaterialDrawer({
    required this.materials,
    required this.content_number,
    required this.progress,
    required this.contentNumberCallback
  });

  final List materials;
  final int content_number;
  final String progress;
  final Callback contentNumberCallback;

  @override
  Widget build(BuildContext context) {
    var color = Global.primaryColor;
    
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(
            height: 120,
            child: DrawerHeader(
              child: Container(
                alignment: Alignment.center,
                child: Text(
                'List Materi',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              ),
              decoration: BoxDecoration(
                color: Color(color),
              ),
            ),
          ),
          for(var i = 0; i < materials.length; i++) Ink(
            color: content_number == materials[i]['id'] ? Color(color) : Colors.transparent,
            child: ListTile(
              title: Text(
                materials[i]['title'],
                style: TextStyle(
                  color: content_number == materials[i]['id'] ? Colors.white : Colors.black,
                ),
              ),
              trailing: (i + 1) <= int.parse(progress) ? Icon(Icons.check, color: Colors.green) : null,
              onTap: (i + 1) <= int.parse(progress) ? () => {
                contentNumberCallback(materials[i]['id']),
                Navigator.of(context).pop()
              } : null,
            ),
          ),
          Ink(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.orange,
              ),
              child: ListTile(
                leading: Icon(Icons.arrow_back, color: Colors.white),
                title: Text(
                  'Kembali',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () => {
                  Navigator.pushNamed(
                    context, 
                    '/home',
                  )
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}