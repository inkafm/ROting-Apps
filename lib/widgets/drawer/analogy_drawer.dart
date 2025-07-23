import 'package:flutter/material.dart';
import 'package:topology_app/core/global.dart';

typedef void Callback(String val);

class AnalogyDrawer extends StatelessWidget {
  const AnalogyDrawer({
    required this.type,
    required this.analogyTypeCallback
  });

  final String type;
  final Callback analogyTypeCallback;

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
                'List Routing',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              ),
              decoration: BoxDecoration(
                color: Color(color),
              ),
            ),
          ),
          Ink(
            color: type == 'static' ? Color(color) : Colors.transparent,
            child: ListTile(
              title: Text(
                "Routing Statis",
                style: TextStyle(
                  color: type == 'static' ? Colors.white : Colors.black,
                ),
              ),
              onTap: () => {
                analogyTypeCallback('static'),
                Navigator.of(context).pop()
              },
            ),
          ),
          Ink(
            color: type == 'dinamic' ? Color(color) : Colors.transparent,
            child: ListTile(
              title: Text(
                "Routing Dinamis",
                style: TextStyle(
                  color: type == 'dinamic' ? Colors.white : Colors.black,
                ),
              ),
              onTap: () => {
                analogyTypeCallback('dinamic'),
                Navigator.of(context).pop()
              },
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