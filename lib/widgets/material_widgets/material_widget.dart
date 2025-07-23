import 'package:flutter/material.dart';
import 'package:topology_app/models/material_model.dart';
import 'package:topology_app/widgets/reusable_widgets/custom_rich_text.dart';

class MaterialWidget extends StatelessWidget {
  MaterialWidget({
    required this.material,
  });

  // final Material material;
  final MaterialModel material;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 20,
        left: 35,
        right: 35,
      ),
      child: Column(
        children: [
          for ( var data in material.contents ) Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: data.type == "text" ? CustomRichText(text: data.value) : Text(data.type),
          ),
        ],
      ),
    );
  }
}