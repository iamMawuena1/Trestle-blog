// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:trestle_blog/blog.dart';
import 'package:trestle_blog/pages/login.dart';
import '../components/button.dart';
import '../components/constant.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    final formkey = GlobalKey<FormState>();
    final fullNameController = TextEditingController();
    final emailController = TextEditingController();
    final addressController = TextEditingController();
    final passwordController = TextEditingController();

    @override
    void dispose() {
      fullNameController.dispose();
      emailController.dispose();
      addressController.dispose();
      passwordController.dispose();
      super.dispose();
    }

    //checking for pass visisbilty
    bool isPassHidden = true;

    //login
    void loginScreen() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const LoginPage(),
        ),
      );
    }

    //sign up btn fumction
    void signUpBtn() {
      // if (formkey.currentState!.validate()) {
      //   formkey.currentState!.save();
      // }

      // String fullName = fullNameController.text;
      // String phoneNumber = addressController.text;
      // String password = passwordController.text;
      // String email = emailController.text;

      // // Print the values for demonstration
      // debugPrint('Full Name: $fullName');
      // debugPrint('Phone Number: $phoneNumber');
      // debugPrint('Password: $password');
      // debugPrint('Email: $email');
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const BlogPage(),
        ),
      );
    }

    //name field
    final nameField = Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPadding),
      child: TextFormField(
        controller: fullNameController,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          hintText: "Enter Full name ",
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        // validator: (fullname) {
        //   if (fullname == null || fullname.trim().isEmpty) {
        //     return 'Can\'t be Empty, Enter Name';
        //   }
        //   if (fullname.length < 4) {
        //     return 'Text too Short';
        //   }
        //   return null;
        // },
      ),
    );

    //email field
    final emailField = Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPadding),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        controller: emailController,
        decoration: InputDecoration(
          hintText: "Enter e-mail ",
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        // validator: (email) {
        //   return !email!.contains("@") ? "Please enter a valid e-mail" : null;
        // },
      ),
    );

    //phone field
    final phoneField = Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPadding),
      child: TextFormField(
        controller: addressController,
        keyboardType: const TextInputType.numberWithOptions(),
        decoration: InputDecoration(
          hintText: "Enter Phone number",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        // validator: (value) {
        //   if (value!.isEmpty) {
        //     return "Please Enter a Phone Number";
        //   } else if (!RegExp(
        //           r'^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$')
        //       .hasMatch(value)) {
        //     return "Please Enter a Valid Phone Number";
        //   }
        //   return null;
        // },
      ),
    );

    //password field
    final passField = Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPadding),
      child: TextFormField(
        controller: passwordController,
        obscureText: isPassHidden,
        decoration: InputDecoration(
          hintText: "Enter Password ",
          suffixIcon: IconButton(
            icon: Icon(
              color: kBlue,
              isPassHidden ? Icons.visibility : Icons.visibility_off,
            ),
            onPressed: () {
              setState(() {
                isPassHidden = !isPassHidden;
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
    );

    return Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(
        child: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: kPadding),
                const CircleAvatar(
                  backgroundColor: kColor,
                  maxRadius: 80.0,
                  child: Icon(
                    Icons.person_2_sharp,
                    size: 60.0,
                  ),
                ),
                const SizedBox(height: 30.0),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: kPadding),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Sign Up",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: kPadding / 2),
                nameField,
                const SizedBox(height: kPadding / 2),
                emailField,
                const SizedBox(height: kPadding / 2),
                phoneField,
                const SizedBox(height: kPadding / 2),
                passField,
                const SizedBox(height: kPadding / 2),
                CustomButton(
                  onTap: signUpBtn,
                  btnName: "Sign Up",
                  color: kColor,
                ),
                const SizedBox(height: kPadding / 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already a member."),
                    GestureDetector(
                      child: const Text(
                        "  Login",
                        style: TextStyle(
                          color: kBlue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () => loginScreen(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
