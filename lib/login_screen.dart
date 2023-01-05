import 'package:flutter/material.dart';
import 'package:flutterfirebasequizpersonal/services/auth_service.dart';
import 'package:flutterfirebasequizpersonal/variables.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

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
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    return Scaffold(
      backgroundColor: Colors.redAccent[200],
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "한국 귀화 예상 문제 모음",
              style: mystyle(
                30,
                Colors.black,
                FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: width * 0.9,
              child: SocialLoginButton(
                buttonType: SocialLoginButtonType.google,
                onPressed: () async {
                  _loginGoogle();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
