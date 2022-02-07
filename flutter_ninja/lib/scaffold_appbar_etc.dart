import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('my first app'),
        centerTitle: true,
      ),
      body: Center(
        /*
        this Center widget functions to center the text hello logos
        we could do "body: Text('hello logos')" directly but it would not be centered
        now since we have nested the Text() widget within the Center function, we have to specify 
        a property for the nested Text() widget, that's why the property "child" is used
        we can't just say Text() coz of the issue of named arguments
        */
        child: Text('hello logos'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Text('click'),
      ),
    ),
  ));
}
