import 'package:athena_skeleton/template_app/components/search_box.dart';
import 'package:athena_skeleton/template_app/constants.dart';
import 'package:athena_skeleton/template_app/models/product.dart';
import 'package:athena_skeleton/template_app/screens/details/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'category_list.dart';
import 'product_card.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Product> products = allProduct;
  @override
  void initState() {
    super.initState();
    // getAllProducts();
  }

  String category = 'all';

  void getProductByCategory() {
    switch (category) {
      case 'all':
        products = allProduct;
        break;
      case 'sofa':
        products = sofaProducts;
        break;
      case 'chair':
        products = chairProducts;
        break;
      case 'wardrobe':
        products = wardrobeProducts;
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: <Widget>[
          SearchBox(onChanged: (value) {
            setState(() {});
          }),
          CategoryList(
            onChangeCategory: (value) {
              setState(() {
                print(value);
                category = value.toString().toLowerCase();
                products = [];
                getProductByCategory();
              });
            },
          ),
          SizedBox(height: kDefaultPadding / 2),
          Expanded(
            child: Stack(
              children: <Widget>[
                // Our background
                Container(
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                ListView.builder(
                  // here we use our demo procuts list
                  itemCount: products.length,
                  itemBuilder: (context, index) => ProductCard(
                    itemIndex: index,
                    product: products[index],
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            product: products[index],
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
