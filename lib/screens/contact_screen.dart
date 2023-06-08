import 'package:flutter/material.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

import 'package:holistic_gaming_site/apis/apis.dart';
import 'package:holistic_gaming_site/widgets/widgets.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    void showSnackBar(String text) {
      ScaffoldMessenger.of(context)
        ..removeCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            content: Text(
              text,
            ),
            duration: const Duration(
              seconds: 3,
            ),
          ),
        );
    }

    // TODO: could be a problem that it's not using the actual site but localhost
    // Will revisit post launch
    Future sendEmail() async {
      // print('daco');
      // GoogleAuthApi.signOut();
      // return;
      // final user = await GoogleAuthApi.signIn();
      final user = await GoogleWebAuthApi.signIn();
      print('user');

      if (user == null) return;
      print(user);

      final email = user.email;
      print(email);
      // final auth = await user.authentication;
      final token = user.idToken!;
      print(token);
      // final accessToken = auth.accessToken!;

      // final smtpServer = gmailSaslXoauth2(email, accessToken);
      final smtpServer = gmailSaslXoauth2(email, token);
      final message = Message()
        ..from = Address(email, 'Gamer')
        ..recipients = ['support@holisticgaming.com']
        ..subject = 'Hello Gamer'
        ..text = 'This is the contact email.';

      try {
        await send(message, smtpServer);
        showSnackBar('Email sent!');
      } on MailerException catch (e) {
        showSnackBar('There was an issue :(');
        print(e);
      }
    }

    return SiteWrapper(
      alwaysShowFooter: true,
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height - 56,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Container(
              //   width: width / 2,
              //   height: height,
              //   color: Colors.purple,
              // ),
              SizedBox(
                height: 25,
                width: width,
              ),
              const Text(
                'Contact Us',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Having a problem or question? Reach out to us and we\'ll get in touch with you as soon as possible.',
              ),
              const SizedBox(height: 25),
              ActionLink(
                text: 'Send Email',
                onTap: () => sendEmail(),
              ),
              const SizedBox(height: 300),
            ],
          ),
        ],
      ),
    );
  }
}
