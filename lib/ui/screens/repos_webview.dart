import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ReposWebview extends StatefulWidget {
  const ReposWebview({Key key}) : super(key: key);

  @override
  _ReposWebviewState createState() => _ReposWebviewState();
}

class _ReposWebviewState extends State<ReposWebview> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
  }

  @override
  Widget build(BuildContext context) {
    final repoUrl = ModalRoute.of(context).settings.arguments;
    return WebView(
      initialUrl: repoUrl,
    );
  }
}
