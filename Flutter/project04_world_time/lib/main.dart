import 'package:flutter/material.dart';
import 'package:project04_world_time/pages/choose_location.dart';
import 'package:project04_world_time/pages/home.dart';
import 'package:project04_world_time/pages/loading.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => Loading(),
    '/home' : (context) => Home(),
    '/location' : (context) => ChooseLocation(),
  },
));
