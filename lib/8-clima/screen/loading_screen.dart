import 'dart:convert';

import 'package:f_pract_bootcamp/8-clima/services/location.dart';
import 'package:f_pract_bootcamp/8-clima/services/networking.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

Network network = Network(
    url:
        "https://api.openweathermap.org/data/2.5/weather?q=London,uk&APPID=6a6394bd89914c20936ba27a1340bc9e");

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getPosition();
    network.getData();
  }

  void getPosition() async {
    Location actualPosition = Location();
    await actualPosition.getCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // getPosition();
          },
          child: Text('Get Locationn'),
        ),
      ),
    );
  }
}
