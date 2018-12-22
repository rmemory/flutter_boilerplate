import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// root level widget for the application
class MyApp extends StatelessWidget {
  /* 
   * Flutter always calls the build method on widget classes to render the 
   * widget. Stated differently, all widgets must implement the build method.
   * 
   * @context contains meta information about the widget, such as location
   * information about where the widget is rendered in the screen, as well
   * as app themes, etc, and is of type BuildContext.
   * 
   * Each build method must return another widget until you reach a widget
   * defined in Widget.
   */
  @override
  Widget build(BuildContext context) {
    /* 
     * MaterialApp is a flutter widget used to wrap the entire application,
     * which is used to set up the nativgator, theming, etc. It is always 
     * used in every Flutter application.
     */
    return MaterialApp( // this container requires a widget tree as follows:
      home: Scaffold( // by default provides a white background
        appBar: AppBar( // provides title bar
          title: Text("Hello World"),
        ),
        body: Card(
          child: Column(children: <Widget>[
            Image.asset("assets/food.jpg"), // see pubspec.yaml
            Text("Food is good")
          ],),
        ),
      ),
    ); // usage of parenthesis is same as using "new"
  }
}