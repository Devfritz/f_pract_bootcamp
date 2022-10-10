import 'package:f_pract_bootcamp/5-destiny/factory-story.dart';
import 'package:flutter/material.dart';

void main() => runApp((MyApp()));

FactoryStory brainStory = FactoryStory();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Destiny(),
    );
  }
}

class Destiny extends StatefulWidget {
  @override
  State<Destiny> createState() => _DestinyState();
}

class _DestinyState extends State<Destiny> {
  void submitRequest() {
    setState(() {
      brainStory.nextStory(1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                  child: Center(
                      child: Text(
                brainStory.getStory(),
                style: TextStyle(fontSize: 32, color: Colors.white),
              ))),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent,
                    minimumSize: Size.fromHeight(50)),
                onPressed: () {
                  submitRequest();
                },
                child: Text(
                  brainStory.getChoice1(),
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: 12),
              ElevatedButton(
                style:
                    ElevatedButton.styleFrom(minimumSize: Size.fromHeight(50)),
                onPressed: () {
                  submitRequest();
                },
                child: Text(
                  brainStory.getChoice2(),
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
