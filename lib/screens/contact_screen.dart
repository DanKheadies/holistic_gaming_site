import 'dart:convert';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:holistic_gaming_site/widgets/widgets.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  bool isSending = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();

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

  void processSubmission() async {
    if (nameController.value.text == '') {
      showSnackBar('Enter your name.');
    } else if (emailController.value.text == '') {
      showSnackBar('Enter your email.');
    } else if (messageController.value.text == '') {
      showSnackBar('Enter a message.');
    } else if (!EmailValidator.validate(emailController.value.text)) {
      showSnackBar('Enter a valid email.');
    } else {
      setState(() {
        isSending = true;
      });

      final response = await sendEmail(
        nameController.value.text,
        emailController.value.text,
        messageController.value.text,
      );

      if (response.statusCode == 200) {
        showSnackBar('Thanks for the message. We\'ll reach out soon.');
      } else {
        showSnackBar(
            'Oh no, something went wrong. Try again or email support@holisticgaming.com.');
        print('error: $response');
      }

      setState(() {
        isSending = false;
        nameController.clear();
        emailController.clear();
        messageController.clear();
      });
    }
  }

  Future sendEmail(
    String name,
    String email,
    String message,
  ) async {
    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    const serviceId = 'service_56ax7kn';
    const templateId = 'hg_contact';
    const publicKey = 'user_NNh1HrO27gE32yLcqTOyh';

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'service_id': serviceId,
        'template_id': templateId,
        'user_id': publicKey,
        'template_params': {
          'from_name': name,
          'from_email': email,
          'message': message,
        },
      }),
    );

    return response;
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    messageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SiteWrapper(
      alwaysShowFooter: true,
      child: Stack(
        children: [
          Container(
            height: height - 56,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 15,
                ),
                child: Text(
                  'Having a problem or question? Reach out to us and we\'ll get in touch with you as soon as possible.',
                ),
              ),
              const SizedBox(height: 25),
              ContactInput(
                controller: nameController,
                label: 'Your Name',
                width: width,
              ),
              const SizedBox(height: 25),
              ContactInput(
                controller: emailController,
                label: 'Email',
                width: width,
              ),
              const SizedBox(height: 25),
              ContactInput(
                controller: messageController,
                label: 'Message',
                width: width,
                isMessage: true,
              ),
              const SizedBox(height: 50),
              isSending
                  ? const CircularProgressIndicator()
                  : ActionLink(
                      text: 'Send Email',
                      onTap: processSubmission,
                    ),
            ],
          ),
        ],
      ),
    );
  }
}
