import 'package:flutter/material.dart';
// import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
// import 'package:webview_flutter/webview_flutter.dart';
import 'package:holistic_gaming_site/widgets/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class WebpageScreen extends StatefulWidget {
  final String? url;

  const WebpageScreen({
    super.key,
    this.url,
  });

  @override
  State<WebpageScreen> createState() => _WebpageScreenState();
}

class _WebpageScreenState extends State<WebpageScreen> {
  bool isKnown = false;

  // late final WebViewController _controller;
  late Uri _url;

  @override
  void initState() {
    super.initState();
    // _controller = WebViewController();
    print(widget.url);
    checkUrl();
  }

  Future<void> checkUrl() async {
    // _url = Uri.parse('/htmls/chatGPT-ouat-init.html');
    if (widget.url != null) {
      print('not null: ${widget.url}');
      _url = Uri.parse('/htmls/${widget.url!}.html');
      print('_url: $_url');
    }

    if (widget.url == 'chatGPT-ouat-init') {
      // _url = Uri.parse('/htmls/chatGPT-ouat-init.html');
      setState(() {
        isKnown = true;
      });

      await Future.delayed(const Duration(seconds: 1));

      if (!await launchUrl(_url)) {
        print('provide better feedback (?)');
        throw Exception('Could not launch $_url');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SiteWrapper(
      screen: 'Home',
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            isKnown
                ? 'Your webpage will open in another tab.'
                : 'Please enter a valid URL.',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ),
    );
  }
}
