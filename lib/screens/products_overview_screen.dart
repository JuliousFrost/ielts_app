import 'package:flutter/material.dart';

import '../models/product.dart';
import '../widgets/product_item.dart';

class ProductsOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = [
    Product(
      id: 'p1',
      title: 'Introduction to IELTS',
      // description: 'A red shirt - it is pretty red!',
      // price: 29.99,
      imageUrl: 'http://www.omgeduservices.com/image/IELTS.jpg',
    ),
    Product(
      id: 'p2',
      title: 'The 4 Modules',
      // description: 'A nice pair of trousers.',
      // price: 59.99,
      imageUrl:
          'https://lh3.googleusercontent.com/-9CqWL3-PHQE/YBo8usj7y0I/AAAAAAAAAA8/bNKbo7ttpuI7Sl5d7hBED9VI1adiU0uiwCLcBGAsYHQ/image.png',
    ),
    Product(
      id: 'p3',
      title: 'Practice Materials and Resources',
      // description: 'Warm and cozy - exactly what you need for the winter.',
      // price: 19.99,
      imageUrl:
          'https://image.freepik.com/free-vector/man-with-laptop-studying-working-concept_113065-167.jpg',
    ),
    Product(
      id: 'p4',
      title: 'Registration and Exam day',
      // description: 'Prepare any meal you want.',
      // price: 49.99,
      imageUrl:
          'https://thumbs.dreamstime.com/z/isometric-artwork-concept-man-using-online-registration-process-isometric-artwork-concept-online-registration-where-140087932.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text('IELTS BUDDY'),
      ),
      body: Container(
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
              colors: [
                const Color(0xFF3366FF),
                const Color(0xFF00CCFF),
              ],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
        ),
        child: GridView.builder(
          padding: const EdgeInsets.all(10.0),
          itemCount: loadedProducts.length,
          itemBuilder: (ctx, i) => ProductItem(
            loadedProducts[i].id,
            loadedProducts[i].title,
            loadedProducts[i].imageUrl,
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 4 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
        ),
      ),
    );
  }
}
