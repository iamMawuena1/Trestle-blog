import 'package:flutter/material.dart';
import 'package:trestle_blog/components/constant.dart';
import 'package:trestle_blog/components/enrol_dialog.dart';
import 'package:trestle_blog/modal/utils.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.skills}) : super(key: key);
  final Skills skills;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(left: 10.0),
                    height: MediaQuery.of(context).size.height * 0.5,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(skills.imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 13.0,
                    top: 30.0,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: kWhite,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      skills.title,
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                      ),
                    ),
                    const SizedBox(height: kPadding / 2),
                    Text(
                      skills.description,
                      style: TextStyle(color: textColor),
                    ),
                    const SizedBox(height: kPadding),
                    MaterialButton(
                      height: 50,
                      minWidth: double.infinity,
                      elevation: 2.0,
                      color: kColor,
                      child: const Text("Enroll Now"),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return const EnrollDialogPane();
                            });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
