import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sign_up_ui/constant.dart';
import 'package:sign_up_ui/widgets/custom_textfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SizedBox(
                    width: 250,
                    child: Image.asset(
                      'assets/images/sign_up.gif',
                    ),
                  ),
                ),
                Text(
                  'Sign up',
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
                  hintText: 'Full Name',
                  prefixIcon: Icon(Icons.person, color: kGreyBlue),
                  obscureText: false,
                  keyboardType: TextInputType.visiblePassword,
                  inputAction: TextInputAction.next,
                ),
                const SizedBox(height: 14),
                CustomTextField(
                  hintText: 'Mobile',
                  prefixIcon: Icon(Icons.phone, color: kGreyBlue),
                  obscureText: false,
                  keyboardType: TextInputType.phone,
                  inputAction: TextInputAction.done,
                ),
                const SizedBox(height: 20),
                RichText(
                  text: TextSpan(
                    text: 'By signing up, you agree to our',
                    style: TextStyle(color: kDarkBlue),
                    children: [
                      TextSpan(
                        text: ' Terms & Conditions',
                        style: TextStyle(color: kBlue),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                      TextSpan(
                        text: ' and',
                        style: TextStyle(color: kDarkBlue),
                      ),
                      TextSpan(
                        text: ' Privacy Policy',
                        style: TextStyle(
                          color: kBlue,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      )
                    ],
                  ),
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
                          'Continue',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: RichText(
                      text: TextSpan(
                        text: 'Joined us before? ',
                        style: TextStyle(
                          color: kDarkBlue,
                          fontSize: 16,
                        ),
                        children: [
                          TextSpan(
                            text: 'Login',
                            style: TextStyle(
                              color: kBlue,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
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
