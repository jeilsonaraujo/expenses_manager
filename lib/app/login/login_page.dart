import 'package:expenses_manager/app/login/components/button_widget.dart';
import 'package:expenses_manager/app/login/components/logo_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double paddingTop = size.height * 0.159;
    double fontTitleSize = size.height * 0.047;
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Padding(
          padding: EdgeInsets.only(top: paddingTop),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  LogoWidget(),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: paddingTop / 2.9,
                    left: paddingTop / 3,
                    right: paddingTop / 3),
                child: Text(
                  'Get your Money Under Control',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: fontTitleSize,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: paddingTop / 9.9,
                    left: paddingTop / 3,
                    right: paddingTop / 3),
                child: Text(
                  'Manage your expenses.\nSeamlessly.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 118, 118, 118),
                    fontSize: fontTitleSize / 1.8,
                  ),
                ),
              ),
              const SizedBox(height: 83),
              const ButtonWidget(
                buttonText: 'Sign Up with Email ID',
                textColor: Colors.white,
                buttonColor: Color.fromARGB(255, 94, 92, 229),
              ),
              const SizedBox(height: 13),
              const ButtonWidget(
                iconImage: 'assets/google_logo.png',
                buttonText: 'Sign Up with Google',
                textColor: Colors.black,
                buttonColor: Colors.white,
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: paddingTop * 0.38,
                    left: paddingTop / 3,
                    right: paddingTop / 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account? ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: fontTitleSize / 2.3,
                      ),
                    ),
                    Text(
                      'Sign In',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        color: Colors.white,
                        fontSize: fontTitleSize / 2.3,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
