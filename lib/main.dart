import 'package:flutter/material.dart';
import 'package:hey_there/color_code_generator.dart';
import 'color_container.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customColor,
      body: FlatButton(
        onPressed: () =>
            setState(() => customColor = ColorGenerator.getRandomColor()),
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        color: Colors.transparent,
        child: Center(
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              Image(
                image: AssetImage('assets/cloud.png'),
                fit: BoxFit.fill,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 120.0),
                child: Text(
                  'Hey there!',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 48,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
