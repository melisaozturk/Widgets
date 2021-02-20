import 'package:flutter/material.dart';
import 'MyCustomWidgetExample.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title:
            "LabTime",
        home: MyStatefulWidget());
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String navBarTitle = "Widget Example";

  void actionButton(String text) {
    setState(() {
      navBarTitle = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(navBarTitle),
      ),
      body: Center(
        child:
        RaisedButton(
          onPressed: () {
            actionButton("Raised Button Action");
          },
          child: Text("Raised Button"),
          color: Colors.amber,
        ),
      ),
    );
  }
}


class MyStatelessWidget extends StatelessWidget {
  /* Stateless widget içerisinde stateful widget'ta olduğu gibi aşağıdaki şekilde state set edemeyiz.
  void actionButton(String text) {
    setState(() {
      navBarTitle = text;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget Example"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Image.asset("images/pengu.jpeg", fit: BoxFit.fill),
              width: 400,
              height: 500,
            ),
            RaisedButton(
              onPressed: () {
                //State tanımlayamadığımız için böyle bir tanımlama da yapamayız
               // actionButton("Raised Button Action");
              },
              child: Text("Raised Button"),
              color: Colors.amber,
            ),
          ],
        ),
      ),
    );
  }
}

