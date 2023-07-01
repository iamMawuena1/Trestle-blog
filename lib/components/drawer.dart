import 'package:flutter/material.dart';
import 'package:trestle_blog/blog.dart';
import 'package:trestle_blog/components/constant.dart';
import 'package:trestle_blog/components/dialogue.dart';
import 'package:trestle_blog/pages/contacts.dart';
import 'package:trestle_blog/pages/facilitators.dart';
import 'package:trestle_blog/pages/settings.dart';
import 'dart:io';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    //nav to homepage
    void homePage() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: ((context) => const BlogPage()),
        ),
      );
    }

    //navigate to faciltators page
    void facilitatorPage() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: ((context) => const FacilitatorsPage()),
        ),
      );
    }

    //navigation to settings page
    void settingsPage() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: ((context) => const SettingsPage()),
        ),
      );
    }

    //navigate to about page
    void aboutPage() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: ((context) => const ContactPage()),
        ),
      );
    }

    //exiting app
    void exiApp() {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return DialoguePane(
              onPressed: () {
                exit(0);
              },
            );
          });
    }

    return Drawer(
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(0),
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: kColor,
            ),
            accountName: Text(
              'M.M',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            accountEmail: Text(
              'info@trestleacademy.com',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/profile1.jpg"),
            ),
            otherAccountsPictures: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/profile2.jpg"),
              ),
              CircleAvatar(
                backgroundImage: AssetImage("assets/profile3.jpg"),
              ),
            ],
          ),
          ListTile(
            leading: const Icon(
              Icons.home,
              size: 30.0,
              color: Colors.black,
            ),
            title: const Text(
              'Home',
              style: TextStyle(fontSize: 20.0),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 18.0,
            ),
            onTap: homePage,
          ),
          const Divider(thickness: 2.0),
          ListTile(
            leading: const Icon(
              Icons.person_2_outlined,
              size: 30.0,
              color: Colors.black,
            ),
            title: const Text(
              'Facilitators',
              style: TextStyle(fontSize: 20.0),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 18.0,
            ),
            onTap: facilitatorPage,
          ),
          const Divider(thickness: 2.0),
          ListTile(
            leading: const Icon(
              Icons.settings_accessibility_rounded,
              size: 30.0,
              color: Colors.black,
            ),
            title: const Text(
              'Settings',
              style: TextStyle(fontSize: 20.0),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 18.0,
            ),
            onTap: settingsPage,
          ),
          const Divider(thickness: 2.0),
          ListTile(
            leading: const Icon(
              Icons.local_play,
              size: 30.0,
              color: Colors.black,
            ),
            title: const Text(
              'About',
              style: TextStyle(fontSize: 20.0),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 18.0,
            ),
            onTap: aboutPage,
          ),
          const Divider(thickness: 2.0),
          ListTile(
            leading: const Icon(
              Icons.logout_rounded,
              size: 30.0,
              color: Colors.black,
            ),
            title: const Text(
              "Exit",
              style: TextStyle(fontSize: 20.0),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 18.0,
            ),
            onTap: () {
              exiApp();
            },
          ),
        ],
      ),
    );
  }
}
