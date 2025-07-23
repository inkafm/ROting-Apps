import 'package:flutter/material.dart';

class CustomRichText extends StatelessWidget {
  CustomRichText({
    required this.text,
  });

  String text;

  @override
  Widget build(BuildContext context) {
    return RichText(
      // overflow: TextOverflow.ellipsis,
      // softWrap: true,
      textAlign: TextAlign.justify,
      text: TextSpan(
        style: TextStyle(
          color: Colors.black,
          fontSize: 16.0,
        ),
        children: <InlineSpan>[
          WidgetSpan(
            alignment: PlaceholderAlignment.baseline,
            baseline: TextBaseline.alphabetic,
            child: SizedBox(width: 20)
          ),
          TextSpan(
            text: text,
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontFamily: 'Nunito',
            )
          ),
        ],
      ),
    );
  }
}