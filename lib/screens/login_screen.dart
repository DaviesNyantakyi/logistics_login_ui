import 'package:flutter/material.dart';
import 'package:sign_up_ui/constant.dart';
import 'package:sign_up_ui/screens/forgot_password_screen.dart';
import 'package:sign_up_ui/screens/sign_up_screen.dart';

import '../widgets/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: SizedBox(
                    width: 250,
                    child: Image.asset(
                      'assets/images/login.gif',
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: kDarkBlue,
                      ),
                    ),
                    const SizedBox(height: 16),
                    CustomTextField(
                      hintText: 'Email ID',
                      prefixIcon: Icon(Icons.alternate_email, color: kGreyBlue),
                      keyboardType: TextInputType.emailAddress,
                      inputAction: TextInputAction.next,
                    ),
                    const SizedBox(height: 14),
                    CustomTextField(
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.lock, color: kGreyBlue),
                      obscureText: obscureText,
                      suffixIcon: InkWell(
                        child: Icon(
                          obscureText == true
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: kGreyBlue,
                        ),
                        onTap: () {
                          obscureText = !obscureText;
                          setState(() {});
                        },
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      inputAction: TextInputAction.done,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ForgotPasswordScreen(),
                              ),
                            );
                          },
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(fontSize: 16, color: kBlue),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          elevation: const MaterialStatePropertyAll<double>(0),
                          backgroundColor: MaterialStatePropertyAll(kBlue),
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        child: const Text(
                          'Login',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Expanded(
                            child: Divider(
                          thickness: 1,
                        )),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            'OR',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Expanded(
                            child: Divider(
                          thickness: 1,
                        )),
                      ],
                    ),
                    const SizedBox(height: 18),
                    SizedBox(
                      height: 48,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        style: ButtonStyle(
                          elevation: const MaterialStatePropertyAll<double>(0),
                          backgroundColor: MaterialStatePropertyAll(kGreyLight),
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        icon: Image.asset(
                          'assets/images/google_icon.png',
                          scale: 2,
                        ),
                        label: Center(
                          child: Text(
                            'Login with Google',
                            style: TextStyle(
                              fontSize: 16,
                              color: kDarkBlue,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 42),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpScreen(),
                      ),
                    );
                  },
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: kDarkBlue,
                      ),
                      children: [
                        const TextSpan(
                          text: 'New to Logistics? ',
                        ),
                        TextSpan(
                          text: 'Register',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: kBlue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
