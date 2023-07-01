import 'package:flutter/material.dart';
import 'package:trestle_blog/blog.dart';
import '../components/button.dart';
import '../components/constant.dart';

class ForgotPassPage extends StatefulWidget {
  const ForgotPassPage({super.key});

  @override
  State<ForgotPassPage> createState() => _ForgotPassPageState();
}

class _ForgotPassPageState extends State<ForgotPassPage> {
  final _formkey = GlobalKey<FormState>();
  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();

    super.dispose();
  }

  //submit btn function
  void onSubmit() {
    // if (_formkey.currentState!.validate()) {
    //   _formkey.currentState!.save();
    // }
    // debugPrint(emailController.text);
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
      appBar: AppBar(
        backgroundColor: kWhite,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: kBlack,
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
                  const CircleAvatar(
                    backgroundColor: kColor,
                    maxRadius: 80.0,
                    child: Icon(
                      Icons.person_2_sharp,
                      size: 60.0,
                    ),
                  ),
                  const SizedBox(height: kPadding * 4),

                  //text
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: kPadding),
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
                            color: textColor,
                            fontSize: 15.0,
                          ),
                        ),
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
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: kPadding / 2),

                  //submit btn
                  CustomButton(
                    onTap: onSubmit,
                    btnName: "Reset Password",
                    color: kColor,
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
