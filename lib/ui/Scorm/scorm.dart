import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:scaleindia/ui/net_connection.dart';
import 'package:scaleindia/widgets/custom_text.dart';
import 'package:scaleindia/widgets/loader_animation.dart';

final Set<JavascriptChannel> jsChannels = [
  JavascriptChannel(
      name: 'Print',
      onMessageReceived: (JavascriptMessage message) {
        print(message.message);
      }),
].toSet();

class Scorm extends StatelessWidget {
  Scorm({
    Key? key,
  }) : super(key: key);
  final flutterWebViewPlugin = FlutterWebviewPlugin();
  static const String selectedUrl = 'https://scalelms.azurewebsites.net/';
  Widget build(BuildContext context) {
    return ConnectionCheck(
      child: WebviewScaffold(
          url: selectedUrl,
          javascriptChannels: jsChannels,
          mediaPlaybackRequiresUserGesture: false,
          withZoom: true,
          withLocalStorage: true,
          hidden: true,
          initialChild: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ColorLoader3(
                radius: 20.0,
                dotRadius: 10.0,
              ),
              CustomText.appBarText('Loading Please wait...')
            ],
          ))),
    );
  }
}
