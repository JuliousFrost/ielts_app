import 'package:flutter/material.dart';

class FourModulesScreen extends StatelessWidget {
  const FourModulesScreen({Key? key}) : super(key: key);

  static const routeName = '/four-modules';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('four Moduels '),
      ),
      body: Hero(
        tag: 'p2',
        child: Image.network(
          'https://lh3.googleusercontent.com/-9CqWL3-PHQE/YBo8usj7y0I/AAAAAAAAAA8/bNKbo7ttpuI7Sl5d7hBED9VI1adiU0uiwCLcBGAsYHQ/image.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
