import 'package:flutter/material.dart';
import 'oracle.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String wisdom;
  int ctr;

  @override
  void initState() {
    super.initState();
    ctr = 0;
  }

  @override
  Widget build(BuildContext context) {

    var wisdom = "woof";

    return MaterialApp(
      theme: ThemeData.dark(),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Corgi Oracle"),
          ),
          body: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    "Click the button and the great Corgi will share his wisdom!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  child: Image(
                    image: AssetImage('images/fortunecorgi.jpg'),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 10),
                      child: Text(
                        wisdom,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    RaisedButton(
                      onPressed: () {
                        setState(() {
                          wisdom = getWisdom().toString();
                          print("$wisdom");
                        });
                      },
                      child: Text("pls click"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
