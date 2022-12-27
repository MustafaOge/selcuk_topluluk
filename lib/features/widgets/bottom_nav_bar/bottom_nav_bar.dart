import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:selcuk_topluluk/core/init/theme/color/project_color.dart';
import 'package:selcuk_topluluk/features/home_page/view/discover.dart';
import 'package:selcuk_topluluk/features/home_page/view/home_page_login.dart';
import 'package:selcuk_topluluk/features/profile/community_profile.dart';
import 'package:selcuk_topluluk/features/onboarding/onboarding_view.dart';
import 'package:selcuk_topluluk/features/splash_page/splash_screen.dart';

import '../../../main.dart';
import '../../message/message_page.dart';
import '../../post_share_page/post_share_view.dart';
import '../../profile/user_profil/user_profil_page.dart';
import '../../test/login_test.dart';

class MyNavigationBar extends StatefulWidget {
  final bool login;

  MyNavigationBar({Key? key, required this.login}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  @override
  int _selectedTab = 0;

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
      if (_selectedTab == 0) {
        Navigator.pushNamed(context, 'discoverPage');
      }
      if (_selectedTab == 1) {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => HomePage(
                  loginContrl: widget.login,
                )));
      }
      if (_selectedTab == 2) {
        Navigator.pushNamed(context, 'postShareView');
      }
      if (_selectedTab == 3) {
        //  Navigator.of(context).push(MaterialPageRoute(builder: (context) => MessageView()));
        Navigator.pushNamed(context, 'MessageView');
        //Navigator.of(context).pushReplacementNamed('/MessageView');
      }

      if (_selectedTab == 4) {
        if (widget.login) {
          Navigator.pushNamed(context, 'userProfil');
        } else {
          Navigator.pushNamed(context, 'NotLoginUser');
        }
      }
    });
  }

  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedTab,
      onTap: (index) => _changeTab(index),
      selectedItemColor: CustomColors.instance.buttonBackGroundColor,
      unselectedItemColor: Colors.black54,
      items: [
        BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.home), label: "Ana Sayfa"),
        BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.layerGroup), label: "Topluluklarım"),
        BottomNavigationBarItem(icon: Icon(Icons.add_box_rounded), label: "Ekle"),
        BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.message), label: "Mesajlaşma"),
        BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.user), label: "Profilim"),
      ],
    );
  }
}
