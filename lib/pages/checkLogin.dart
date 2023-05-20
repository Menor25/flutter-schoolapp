import 'package:flutter/material.dart';
import 'package:schoolapp/pages/login_page.dart';

import 'RegisterPage.dart';

class CheckLogin extends StatefulWidget {
  const CheckLogin({
    super.key
});

  @override
  State<CheckLogin> createState() => _CheckLoginState();
}

class _CheckLoginState extends State<CheckLogin> {
  //initialize show login page
  bool showLoginPage = true;

  //toggle between login and register page
  void toggle() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(showLoginPage) {
      return LoginPage(onTap: toggle);
    }else {
      return RegisterPage(onTap: toggle,);
    }
    return const Placeholder();
  }
}

