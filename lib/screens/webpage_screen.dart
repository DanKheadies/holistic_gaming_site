import 'package:flutter/material.dart';
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

  late Uri _url;

  @override
  void initState() {
    super.initState();

    checkUrl();
  }

  Future<void> checkUrl() async {
    // _url = Uri.parse('/htmls/chatGPT-ouat-init.html');
    if (widget.url != null) {
      _url = Uri.parse('/htmls/${widget.url!}.html');
    }

    if (widget.url == 'chatGPT-ouat-init') {
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
