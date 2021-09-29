<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

Flutter specifiec platform data. You can use this package when you want to know user's platform type.

## Getting started

Don't forget to initialize the class at first like that: 
```dart
void main() {
  PlatformData.init();
  // You can get the platform type like this:
  print('platform type: ' + PlatformData.platformType.toString());
  runApp(MyApp());
}
```

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder. 

```dart
if (PlatformData.platformType == PlatformType.WEB) {
    // build for web
} else if (PlatformData.platformType == PlatformType.ANDROID) {
    // build for android
}
```
