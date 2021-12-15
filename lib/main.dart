import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'home_view.dart';

void main() {
  runApp(DevicePreview(builder: (content) => MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Todo task',
      theme: ThemeData(
          primaryColor: const Color.fromRGBO(37, 43, 103, 1),
          appBarTheme: const AppBarTheme(
              backgroundColor: Color.fromRGBO(37, 43, 103, 1), elevation: 0)),
      home: HomeView(),
    );
  }
}
