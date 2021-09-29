import 'package:flutter/material.dart';
import 'package:platform_data/platform_data.dart';

void main() {
  PlatformData.init();
  print('platform type: ' + PlatformData.platformType.toString());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}