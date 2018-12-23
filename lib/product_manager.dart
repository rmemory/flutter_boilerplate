import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  // Constructor
  ProductManager({this.startingProduct = "Default food"});

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

// This class contains the state of the products list and the Button to add a product
class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  /* 
   * This lifecycle method is only called when the widget is initially
   * created and is not called each time the widget is updated. 
   */
  @override
  void initState() {
    super.initState();
    // widget.startingProduct is the class variable in ProductManager above
    _products.add(widget.startingProduct);
  }

  /* 
   * A lifecycle method which is only called when the widget is completely
   * rebuilt, and a state change is not one of those times. 
   */
  @override
  void didUpdateWidget(ProductManager oldWidget) {
    super.didUpdateWidget(oldWidget);
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
              color: Theme.of(context).primaryColor,
              onPressed: () {
                // setState will not cause didUpdateWidget to be called
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