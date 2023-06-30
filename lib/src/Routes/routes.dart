import 'package:flutter/material.dart';

//Pages
import 'package:espeats/src/Features/Presentation/WelcomePage/View/welcome_page.dart';
import 'package:espeats/src/Features/Presentation/LoginPage/View/login_page.dart';
import 'package:espeats/src/Features/Presentation/ForgotPasswordPage/View/forgot_password_pages.dart';
import 'package:espeats/src/Features/Presentation/SignUpPage/View/sign_up_page.dart';
import '../Features/Presentation/Tabs/TabsPage/View/tabs_page.dart';


final routes = <String,WidgetBuilder>{
  'welcome' : (BuildContext context) => const WelcomePage(),
  'login' : (BuildContext context) => const LoginPage(),
  'forgot_password' : (BuildContext context) => const ForgotPassword(),
  'sign_up' : (BuildContext context) => const SignUpPage(),
  'tabs' : (BuildContext context) => const TabsPage(),
};