import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:selcuk_topluluk/features/login_page/login_view.dart';

import 'core/init/theme/project_theme.dart';
import 'features/home_page/view/discover.dart';
import 'features/home_page/view/home_page_login.dart';
import 'features/message/chat_page/chat_page.dart';
import 'features/message/message_page.dart';
import 'features/onboarding/onboarding_view.dart';
import 'features/post_share_page/post_share_view.dart';
import 'features/profile/community_profile.dart';
import 'features/profile/community_settings.dart/community_settings.dart';
import 'features/profile/user_profil/not_login_user.dart';
import 'features/profile/user_profil/user_profil_page.dart';
import 'features/register_page/register_view.dart';
import 'features/splash_page/splash_screen.dart';
import 'features/start_page/start_view.dart';
import 'features/test/testLogin.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: AppTheme.instance.theme,
        initialRoute: 'splashScreen',
        routes: {
          // When navigating to the "homeScreen" route, build the HomeScreen widget.
          'SplashScreen': (context) => SplashScreen(),
          // When navigating to the "secondScreen" route, build the SecondScreen widget.

          "discoverPage": (context) => DiscoverPage(loginContrl: true),
          "homePage": (context) => HomePage(loginContrl: true),

          "loginView": (context) => LoginView(),
          "communityProfile": (context) => CommunityProfile(),
          "registerView": (context) => RegisterView(),

          "chatPage": (context) => ChatPage(),

          "userProfil": (context) => UserProfil(),
          "startView": (context) => StartView(),
          "onBoardingView": (context) => OnBoardingView(),
          "splashScreen": (context) => SplashScreen(),
          "postShareView": (context) => PostShareView(),
          "MessageView": (context) => MessageView(),
          "communitySetting": (context) => CommunitySetting(),
          "LoginViewTest": (context) => LoginViewTest(),
          "NotLoginUser": (context) => NotLoginUser(),
        },
        home: Scaffold(
          resizeToAvoidBottomInset: false,
          body: SplashScreen(),
        ));
  }
}
