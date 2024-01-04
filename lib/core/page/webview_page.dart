import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class WebViewPage extends HookWidget {
  // ignore: use_key_in_widget_constructors
  const WebViewPage({
    required this.url,
  });

  final String url;
  @override
  Widget build(BuildContext context) {
    debugPrint('Build: $runtimeType');

    // #Region Hooks
    final _title = useValueNotifier<String>('');
    useValueListenable(_title);

    useEffect(() {
      debugPrint('useEffect: $runtimeType');
      return null;
    }, const []);
    // #Endregion

    return Scaffold(
      appBar: AppBar(
        title: Text(_title.value),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.adaptive.arrow_back,
          ),
        ),
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(
          url: Uri.parse(url),
        ),
        onLoadStart: (controller, url) {
          debugPrint('Page started loading: $url');
          _title.value = url.toString();
        },
        onLoadStop: (controller, url) {
          debugPrint('Page finished loading: $url');
        },
        initialOptions: InAppWebViewGroupOptions(
          android: AndroidInAppWebViewOptions(
            initialScale: 100,
          ),
          // ios: IOSInAppWebViewOptions(),
        ),
        shouldOverrideUrlLoading: (controller, navigationAction) async {
          final uri = navigationAction.request.url!;

          debugPrint('WebView Uri : $uri');

          if (![
            "http",
            "https",
          ].contains(uri.scheme)) {
            if (await canLaunchUrl(Uri.parse(url))) {
              // Launch the App
              await launchUrl(
                Uri.parse(url),
              );
              // and cancel the request
              return NavigationActionPolicy.CANCEL;
            }
          }

          return NavigationActionPolicy.ALLOW;
        },
      ),
    );
  }
}
