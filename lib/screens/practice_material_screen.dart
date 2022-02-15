import 'package:flutter/material.dart';

class PracticeMaterialScreen extends StatelessWidget {
  const PracticeMaterialScreen({Key? key}) : super(key: key);

  static const routeName = '/practice-material';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practice Materials and Resources'),
      ),
      body: Hero(
        tag: 'p3',
        child: Image.network(
          'https://image.freepik.com/free-vector/man-with-laptop-studying-working-concept_113065-167.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
