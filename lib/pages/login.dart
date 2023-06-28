import 'package:flutter/material.dart';
import 'package:trestle_blog/blog.dart';
import '../components/constant.dart';
import 'forgotpass.dart';
import 'signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
        builder: (context) => const ForgotPasswordScreen(),
      ),
    );
  }

  //sign up
  void signUpScreen() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const SignUpScreen(),
      ),
    );
  }

  //login btn
  void loginBtn() {
    if (_formkey.currentState!.validate()) {
      _formkey.currentState!.save();
    }

    String email = emailController.text;
    String password = passWordController.text;

    debugPrint("Email: $email");
    debugPrint("Password: $password");

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
                children: [
                  //img
                  Image.asset(
                    "assets/login.jpg",
                    width: double.infinity,
                    height: 300.0,
                  ),

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
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: kColor,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      validator: (mail) {
                        return !mail!.contains("@")
                            ? "Please enter a valid e-mail"
                            : null;
                      },
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
                        //to make password visible
                        suffixIconColor: kColor,
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
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: kColor,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      validator: (password) {
                        if (password == null || password.trim().isEmpty) {
                          return 'This field is required';
                        }
                        if (password.trim().length < 8) {
                          return 'Password must be at least 8 characters in length';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: kPadding / 2),

                  //forgot pass
                  GestureDetector(
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: kPadding),
                          child: Text(
                            "Forgotten Password?",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: kBlue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    onTap: () => forgotPass(),
                  ),
                  const SizedBox(height: kPadding / 2),

                  //submit btn
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: kPadding),
                    child: GestureDetector(
                      child: Container(
                        height: 50.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: kColor,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(kPadding / 2),
                          child: Text(
                            "Login",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: kWhite,
                            ),
                          ),
                        ),
                      ),
                      onTap: () => loginBtn(),
                    ),
                  ),
                  const SizedBox(height: kPadding / 2),

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
