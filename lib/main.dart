import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io';

void main() {
  runApp(const webviewFrame());
}

class webviewFrame extends StatefulWidget {
  const webviewFrame({Key? key}) : super(key: key);

  @override
  State<webviewFrame> createState() => _webviewFrameState();
}

class _webviewFrameState extends State<webviewFrame> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return WebView(
      // initialUrl: 'http://8.215.65.120:8002/login',
      initialUrl: 'https://nyaribengkel.com',
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
