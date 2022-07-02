Flutter specifiec platform data, A cleaner way to know users platform type.

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
