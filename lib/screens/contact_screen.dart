import 'package:cloud_functions/cloud_functions.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
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

      // if (response.statusCode == 200) {
      if (response == 200) {
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

  Future<dynamic> sendEmail(
    String name,
    String email,
    String message,
  ) async {
    try {
      HttpsCallableResult<dynamic> response =
          await FirebaseFunctions.instance.httpsCallable('contactEmail').call({
        // await FirebaseFunctions.instance.httpsCallable('basicEmail').call({
        'email': email,
        'message': message,
        'name': name,
      });

      return response.data;
    } on FirebaseFunctionsException catch (err) {
      print('ff error: $err');
    } catch (err) {
      print('error: $err');
    }
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
      screen: 'Contact',
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
