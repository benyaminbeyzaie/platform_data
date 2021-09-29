library platform_data;

import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;

enum PlatformType { WEB, ANDROID, IOS, WINDOWS, LINUX, MAC, UNKNOWN }

class PlatformData {
  static PlatformType platformType = PlatformType.UNKNOWN;
  static init() {
    if (kIsWeb) {
      platformType = PlatformType.WEB;
    } else {
      if (Platform.isAndroid) platformType = PlatformType.ANDROID;
      else if (Platform.isIOS) platformType = PlatformType.IOS;
      else if (Platform.isLinux) platformType = PlatformType.LINUX;
      else if (Platform.isMacOS) platformType = PlatformType.MAC;
      else if (Platform.isWindows) platformType = PlatformType.WINDOWS;
    }
  }
}