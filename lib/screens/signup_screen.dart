import 'package:flutter/material.dart';
import 'package:welcomepages/theme/theme.dart';
import 'package:welcomepages/widgets/Logo.dart';
import 'package:welcomepages/widgets/custom_scaffold.dart';
//import 'package:icons_plus/icons_plus.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:sign_in_button/sign_in_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final GlobalKey<FormState> formkey = GlobalKey();
  bool rememberPassword = true;
  bool hasError = false;
  @override
  Widget build(BuildContext context) {
    return custom_scaffold(
      widget: IconButton(onPressed:() {
          return Navigator.of(context).pop();
        } , icon: Icon(Icons.arrow_back)),
      child: Column(
        children: [
          Expanded(flex: 1, child: SizedBox(height: 100)),
          Expanded(
            flex: 6,
            child: Container(
              padding: EdgeInsets.fromLTRB(25.0, 50.0, 25.0, 20.0),
              // height: 700,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: formkey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Text(
                          "Welcome Back",
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w900,
                            color: lightColorScheme.primary,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Expanded(
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              setState(() {
                                hasError = true;
                              });
                              return "please Enter Email";
                            } else {
                              setState(() {
                                hasError = false;
                              });
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            label: Text("Email"),
                            labelStyle: TextStyle(
                              color: lightColorScheme.primary,
                            ),
                            hintText: "Enter Email",
                            hintStyle: TextStyle(
                              color: const Color.fromARGB(255, 203, 201, 201),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: lightColorScheme.primary,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: lightColorScheme.primary,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            errorStyle: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Expanded(
                        child: TextFormField(
                          obscureText: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "please Enter password";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            label: Text("Password"),
                            labelStyle: TextStyle(
                              color: lightColorScheme.primary,
                            ),
                            hintText: "Enter password",

                            hintStyle: TextStyle(
                              color: const Color.fromARGB(255, 203, 201, 201),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: lightColorScheme.primary,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: lightColorScheme.primary,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            errorStyle: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: rememberPassword,
                                activeColor: lightColorScheme.primary,
                                onChanged: (value) {
                                  setState(() {
                                    rememberPassword = value!;
                                  });
                                },
                              ),
                              Text("Remember me"),
                            ],
                          ),
                          SizedBox(width: 150),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(
                                context,
                              ).pushNamed('ForgetPasswordScreen');
                            },
                            child: Text(
                              "forget password?",
                              style: TextStyle(
                                color: lightColorScheme.primary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      MaterialButton(
                        minWidth: double.infinity,
                        height: 48,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: lightColorScheme.primary,

                        onPressed: () {
                          if (formkey.currentState!.validate() &&
                              rememberPassword) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Proccicing Data")),
                            );
                          } else if (!rememberPassword) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  "please agree to the  proccecing of personal",
                                ),
                              ),
                            );
                          }
                        },
                        child: Text(
                          "Sign up",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 0.7,
                              color: Colors.grey.withOpacity(0.5),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: Text(
                                "Sign up with",
                                style: TextStyle(color: Colors.black45),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),

                          Expanded(
                            child: Divider(
                              thickness: 0.7,
                              color: Colors.grey.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Logo(
                            LogoName: 'assets/icons/Facebook_Logo.png',
                            degree_of_circular: 50.0,
                          ),
                          Logo(
                            LogoName: 'assets/icons/Twitter.png',
                            degree_of_circular: 0.0,
                          ),
                          Logo(
                            LogoName: 'assets/icons/g.webp',
                            degree_of_circular: 50.0,
                          ),

                          Logo(
                            LogoName: 'assets/icons/apple_logo.png',
                            degree_of_circular: 50.0,
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Have an account? "),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed("SigninScreen");
                            },
                            child: Text(
                              "Sign in",
                              style: TextStyle(color: lightColorScheme.primary),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
