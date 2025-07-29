import 'package:flutter/material.dart';
import 'package:welcomepages/theme/theme.dart';
import 'package:welcomepages/widgets/Logo.dart';
import 'package:welcomepages/widgets/custom_scaffold.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final GlobalKey<FormState> formkey = GlobalKey();
  bool _rememberPassword = true;
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
            flex: 7,
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
                padding: const EdgeInsets.all(0.8),
                child: Form(
                  key: formkey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Text(
                          "Get Started",
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
                              return "please Enter fullName";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            label: Text("FullName"),
                            hintText: "Enter fullName",
                            labelStyle: TextStyle(
                              color: lightColorScheme.primary,
                            ),
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
                                width: 2
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
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "please Enter Email";
                            }
                            return null;
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
                                width: 2
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
                            setState(() {
                              hasError = value!.isNotEmpty;
                            });
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
                                width: 2
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
                                value: _rememberPassword,
                                activeColor: lightColorScheme.primary,
                                onChanged: (value) {
                                  setState(() {
                                    _rememberPassword = value!;
                                  });
                                },
                              ),
                              Text.rich(
                                TextSpan(
                                  text: "I agree the proccicing of ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: const Color.fromARGB(
                                      255,
                                      128,
                                      127,
                                      127,
                                    ),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "prsonal data",
                                      style: TextStyle(
                                        color: lightColorScheme.primary,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
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
                              _rememberPassword) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Proccicing Data Done..")),
                            );
                          } else if (!_rememberPassword) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  "please agree to the  proccecing of personal..",
                                ),
                              ),
                            );
                          }
                        },
                        child: Text(
                          "Sign in",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                          Text("Dont Have an account? "),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed("SignupScreen");
                            },
                            child: Text(
                              "Sign up",
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
