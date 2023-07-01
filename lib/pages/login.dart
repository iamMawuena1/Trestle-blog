import 'package:flutter/material.dart';
import 'package:trestle_blog/blog.dart';
import 'package:trestle_blog/pages/forgotpass.dart';
import 'package:trestle_blog/pages/signup.dart';

import '../components/button.dart';
import '../components/constant.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passWordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passWordController.dispose();

    super.dispose();
  }

  //checking for text obscurity
  bool _isObscure = true;

  //forgot pass
  void forgotPass() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ForgotPassPage(),
      ),
    );
  }

  //sign up
  void signUpScreen() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const SignUpPage(),
      ),
    );
  }

  //login btn
  void loginBtn() {
    // if (_formkey.currentState!.validate()) {
    //   _formkey.currentState!.save();
    // }

    // String email = emailController.text;
    // String password = passWordController.text;

    // debugPrint("Email: $email");
    // debugPrint("Password: $password");
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const BlogPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                     backgroundColor: kColor,
                    maxRadius: 80.0,
                    child: Icon(
                      Icons.person_2_sharp,
                      size: 60.0,
                    ),
                  ),
                  const SizedBox(height: 50.0),

                  //login text
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: kPadding),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Login",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                          ),
                        ),
                        Text(
                          "Login in to continue the wonderful experience",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: kPadding / 2),

                  //emai field
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: kPadding),
                    child: TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        hintText: 'Enter E-mail',
                      ),
                      // validator: (mail) {
                      //   return !mail!.contains("@")
                      //       ? "Please enter a valid e-mail"
                      //       : null;
                      // },
                    ),
                  ),
                  const SizedBox(height: kPadding / 2),

                  //password field
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: kPadding),
                    child: TextFormField(
                      controller: passWordController,
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        suffixIconColor: kBlue,
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isObscure
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      // validator: (password) {
                      //   if (password == null || password.trim().isEmpty) {
                      //     return 'This field is required';
                      //   }
                      //   if (password.trim().length < 8) {
                      //     return 'Password must be at least 8 characters in length';
                      //   }
                      //   return null;
                      // },
                    ),
                  ),
                  const SizedBox(height: kPadding / 2),

                  //forgot pass
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: kPadding),
                    child: GestureDetector(
                      onTap: forgotPass,
                      child: const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forgotten Password?",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: kBlue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: kPadding),

                  //submit btn
                  CustomButton(
                    onTap: loginBtn,
                    btnName: "Login",
                    color: kColor,
                  ),
                  const SizedBox(height: kPadding),

                  //sign up session
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Dont have an account?"),
                      GestureDetector(
                        child: const Text(
                          "  Sign Up",
                          style: TextStyle(
                            color: kBlue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () => signUpScreen(),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
