import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:gojek/theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 3), () {
        Navigator.of(context).pushReplacementNamed('/home');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary2, // Change to your splash screen color
      body: const Center(
        child: Text(
          'Gojek',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
