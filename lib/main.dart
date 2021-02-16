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
  String wisdom = "woof";
  int ctr;

  @override
  void initState() {
    super.initState();
    ctr = 0;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Corgi Oracle"),
        ),
        body: SafeArea( // Wrap the child of scaffold in safe area. works better for ios. did not know this
          child: Column(
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
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    RaisedButton(
                      onPressed: () async {
                        var temp = await getWisdom();
                        setState(() {
                          wisdom = temp.toString();
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