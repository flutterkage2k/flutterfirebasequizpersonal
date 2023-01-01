import 'package:flutter/material.dart';
import 'package:flutterfirebasequizpersonal/services/auth_service.dart';
import 'package:flutterfirebasequizpersonal/variables.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isLoading = false;

  Future<void> _loginGoogle() async {
    setState(() {
      _isLoading = true;
    });
    await AuthService().signInWithGoogle();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[200],
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome to App",
              style: mystyle(
                22,
                Colors.black,
                FontWeight.w700,
              ),
            ),
            TextButton(
                onPressed: () async {
                  _loginGoogle();
                },
                child: const Text('Google Sign In'))
          ],
        ),
      ),
    );
  }
}
