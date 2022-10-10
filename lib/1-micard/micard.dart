import "package:flutter/material.dart";

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'poor app',
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  // backgroundColor: Colors.teal,
                  backgroundImage: AssetImage('images/pp.jpg'),
                ),
                Text(
                  'Fritz Gerlin Senat',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico',
                  ),
                ),
                Text(
                  'Mobile Developer',
                  style: TextStyle(
                    letterSpacing: 2.0,
                    fontSize: 20,
                    color: Colors.teal.shade100,
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(10.0),
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      '+50939963293',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.teal,
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(10.0),
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'fritzgerlinsenat@gmail.com',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.teal,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
