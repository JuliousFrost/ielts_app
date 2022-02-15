import 'package:flutter/material.dart';

class TitleParagraph extends StatelessWidget {
  final String title;
  final String data;
  const TitleParagraph({
    Key? key,
    required this.title,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            data,
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 21,
            ),
          ),
        ],
      ),
    );
  }
}
