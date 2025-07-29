import 'package:flutter/material.dart';
import 'package:welcomepages/theme/theme.dart';
import 'package:welcomepages/widgets/custom_scaffold.dart';
import 'package:welcomepages/widgets/welcome_buttoms.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return custom_scaffold(
      widget: null,
      child: Column(
        children: [
          Flexible(
            flex: 8,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 40.0),
              child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Welcome Back!\n",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 45.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text:
                            "\nEnter personal detailes to your employee\n account",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  welcome_buttoms(
                    buttonText: 'Sign in',
                    color: Colors.transparent.withAlpha(0),
                    pageName: 'SigninScreen',
                    textColor: Colors.white,
                  ),
                  welcome_buttoms(
                    buttonText: 'Sign up',
                    color: Colors.white,
                    pageName: 'SignupScreen',
                    textColor: lightColorScheme.primary,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
