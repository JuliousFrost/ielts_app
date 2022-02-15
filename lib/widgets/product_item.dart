import 'package:flutter/material.dart';
import 'package:ielts_app/screens/four_modules_screen.dart';
import 'package:ielts_app/screens/intro_screen.dart';
import 'package:ielts_app/screens/practice_material_screen.dart';
import 'package:ielts_app/screens/registration_screen.dart';

import '../screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  ProductItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            switch (id) {
              case "p1":
                {
                  Navigator.of(context).pushNamed(IntroScreen.routeName);
                }
                break;
              case "p2":
                {
                  Navigator.of(context).pushNamed(FourModulesScreen.routeName);
                }
                break;
              case "p3":
                {
                  Navigator.of(context)
                      .pushNamed(PracticeMaterialScreen.routeName);
                }
                break;
              case "p4":
                {
                  Navigator.of(context)
                      .pushNamed(RegistrationAndExam.routeName);
                }
                break;

              default:
                {
                  Navigator.of(context).pushNamed(
                    ProductDetailScreen.routeName,
                    arguments: title,
                  );
                }
                break;
            }

            // id == 'p1'?Navigator.of(context).pushNamed(IntroScreen.routeName)
            // :
            // Navigator.of(context).pushNamed(
            //   ProductDetailScreen.routeName,
            //   arguments: title,
            // );
          },
          child: Hero(
            tag: id,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          // leading: IconButton(
          //   icon: Icon(Icons.favorite),
          //   color: Theme.of(context).accentColor,
          //   onPressed: () {},
          // ),
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          // trailing: IconButton(
          //   icon: Icon(
          //     Icons.shopping_cart,
          //   ),
          //   onPressed: () {},
          //   color: Theme.of(context).accentColor,
          // ),
        ),
      ),
    );
  }
}
