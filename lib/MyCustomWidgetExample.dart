import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color textBackgroundColor;

  CustomWidget(
      {@required this.text,
      @required this.textColor,
      @required this.textBackgroundColor});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        Text("Custom Widget Text");
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Text(
        "Custom Widget Raised Button",
        style: TextStyle(
            fontSize: 20.0,
            color: textColor,
            backgroundColor: textBackgroundColor),
      ),
      color: Colors.amber,
    );
  }
}

// Custom widget kullanımı
class MyCustomWidgetExample extends StatefulWidget {
  @override
  _MyCustomWidgetExampleState createState() => _MyCustomWidgetExampleState();
}

class _MyCustomWidgetExampleState extends State<MyCustomWidgetExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Widget"),
      ),
      body: Center(
          child: CustomWidget(
              text: "Custom Widget Example Test",
              textColor: Colors.amber,
              textBackgroundColor: Colors.deepPurple)),
    );
  }
}
