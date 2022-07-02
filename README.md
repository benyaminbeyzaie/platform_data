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
**After initializing** the package you can use it anywhere in the code in two ways:
```dart
if (PlatformData.platformType == PlatformType.web) {
    // build for web
} else if (PlatformData.platformType == PlatformType.android) {
    // build for android
}
```
```dart
if (isPlatformWeb) {
    // build for web
}
```
