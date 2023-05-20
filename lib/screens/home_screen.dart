import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // static const String routeName = '/home';
  // static Route route() {
  //   return MaterialPageRoute(
  //     builder: (_) => const HomeScreen(),
  //     settings: const RouteSettings(name: routeName),
  //   );
  // }

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    if (ModalRoute.of(context) != null &&
        ModalRoute.of(context)!.settings.name == '/home') {
      print('flame');
      print(ModalRoute.of(context)!.settings.name);
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Holistic Gaming'),
        automaticallyImplyLeading: false,
      ),
      body: const Center(
        child: Text('Welcome Bro'),
      ),
    );
  }
}
