library platform_data;

import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;

enum PlatformType { web, android, ios, windows, linux, mac, unknown }

class PlatformData {
  static PlatformType platformType = PlatformType.unknown;
  static init() {
    if (kIsWeb) {
      platformType = PlatformType.web;
    } else {
      if (Platform.isAndroid) {
        platformType = PlatformType.android;
      } else if (Platform.isIOS) {
        platformType = PlatformType.ios;
      } else if (Platform.isLinux) {
        platformType = PlatformType.linux;
      } else if (Platform.isMacOS) {
        platformType = PlatformType.mac;
      } else if (Platform.isWindows) {
        platformType = PlatformType.windows;
      }
    }
  }
}

get isPlatformWeb => PlatformData.platformType == PlatformType.web;

get isPlatformAndroid => PlatformData.platformType == PlatformType.android;

get isPlatformIOS => PlatformData.platformType == PlatformType.ios;

get isPlatformLinux => PlatformData.platformType == PlatformType.linux;

get isPlatformMac => PlatformData.platformType == PlatformType.mac;

get isPlatformWindows => PlatformData.platformType == PlatformType.windows;