import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager(this.startingProduct);

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

// This class contains the state of the products list and the Button to add a product
class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  void initState() {
    super.initState();
    _products.add(widget.startingProduct);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container( // Container for button
          margin: 
            EdgeInsets.all(10.0), // add a 10 pixel boundary around button
          child: 
            RaisedButton( // The button itself
              onPressed: () {
                setState(() {
                  _products.add('Added food test');
                });
              },
              child: Text("Add product"),
            ),
        ),
        
        // The list of products
        Products(_products),
      ]);
    }
}