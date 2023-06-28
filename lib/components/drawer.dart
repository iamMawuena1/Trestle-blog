import 'package:flutter/material.dart';
import 'package:trestle_blog/blog.dart';
import 'package:trestle_blog/pages/facilitators.dart';
import 'package:trestle_blog/pages/settings.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    void homePage() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: ((context) => const BlogPage()),
        ),
      );
    }

    void facilitatorPage() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: ((context) => const FacilitatorsPage()),
        ),
      );
    }

    void settingsPage() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: ((context) => const SettingsPage()),
        ),
      );
    }
    //  void aboutPage() {
    //   Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //       builder: ((context) => const AboutPage()),
    //     ),
    //   );
    // }

    return Drawer(
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(0),
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.purple,
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
              backgroundImage: AssetImage("assets/rpa.jpg"),
            ),
            otherAccountsPictures: [
              FlutterLogo(),
              FlutterLogo(),
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
          const Divider(
            thickness: 2.0,
          ),
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
          const Divider(
            thickness: 2.0,
          ),
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
          const Divider(
            thickness: 2.0,
          ),
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
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
