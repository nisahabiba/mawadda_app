import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:injectable/injectable.dart';

import '../di/injector.dart';

@lazySingleton
class MyChromeSafariBrowser extends ChromeSafariBrowser {
  @override
  void onOpened() {
    debugPrint("ChromeSafari browser opened");
  }

  @override
  void onCompletedInitialLoad() {
    debugPrint("ChromeSafari browser initial load completed");
  }

  @override
  void onClosed() {
    debugPrint("ChromeSafari browser closed");
  }
}

@lazySingleton
class OpenBrowser {
  final ChromeSafariBrowser browser = getIt<MyChromeSafariBrowser>();
  Future<void> openNativeWebView({
    required String url,
  }) async {
    await browser.open(
      url: Uri.parse(url),
      options: ChromeSafariBrowserClassOptions(
        android: AndroidChromeCustomTabsOptions(
          isTrustedWebActivity: true,
          // shareState: CustomTabsShareState.SHARE_STATE_OFF,
        ),
        ios: IOSSafariOptions(
          barCollapsingEnabled: true,
          dismissButtonStyle: IOSSafariDismissButtonStyle.CLOSE,
        ),
      ),
    );
  }
}
