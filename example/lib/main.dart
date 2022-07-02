import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:platform_data/platform_data.dart';

void main() {
  PlatformData.init();
  log("platform type: ${PlatformData.platformType.toString()}");
  log("is platform web: ${isPlatformWeb.toString()}");
  log("is platform android: ${isPlatformAndroid.toString()}");

  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Platform type:\n${PlatformData.platformType.toString()}",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(height: 10),
            Text(
              "Platform is web:\n${isPlatformWeb.toString()}",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(height: 10),
            Text(
              "Platform is android:\n${isPlatformAndroid.toString()}",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline5,
            ),
          ],
        ),
      ),
    );
  }
}
