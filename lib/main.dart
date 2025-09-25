import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'my_pitches_screen.dart';
import 'settings_screen.dart'; 

void main() {
  runApp(
    DevicePreview(
      enabled: true, 
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        useInheritedMediaQuery: true, 
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        home: MyPitchesScreen(),
      ),
    ),
  );
}
