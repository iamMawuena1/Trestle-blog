import 'package:flutter/material.dart';

import '../components/constant.dart';


class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _formkey = GlobalKey<FormState>();
  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();

    super.dispose();
  }

  //submit btn function
  void onSubmit() {
    if (_formkey.currentState!.validate()) {
      _formkey.currentState!.save();
    }
    debugPrint(emailController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        backgroundColor: kWhite,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Form(
            key: _formkey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //img section
                  Image.asset(
                    "assets/forgot.jpg",
                    width: double.infinity,
                    height: 300.0,
                  ),
                  //text
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Forgot Password",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                          ),
                        ),
                        Text(
                          "Forgotten your password, let us help you recover it safely.",
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 15.0,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: kPadding / 2),
                  //email field
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: kPadding),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: "Enter e-mail ",
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: kColor,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
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
                            "Submit",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: kWhite,
                            ),
                          ),
                        ),
                      ),
                      onTap: () => onSubmit(),
                    ),
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
