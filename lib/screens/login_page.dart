import 'package:flutter/material.dart';
import 'package:grocery_app/models/user.dart';
import 'package:grocery_app/widgets/general/appBottomBar.dart';
import '../widgets/general/textfields.dart';
import './signup_page.dart';
import '../widgets/general/appBottomBar.dart';
import '../widgets/general/app_button.dart';
import '../services/response/login_response.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

enum LoginStatus { notSignIn, signIn }

class _LoginPageState extends State<LoginPage> implements LoginCallBack {
  LoginStatus _loginStatus = LoginStatus.notSignIn;
  BuildContext? _ctx;
  bool _isLoading = false;
  final formKey = new GlobalKey<FormState>();
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  late String _username, _password;
  late LoginResponse _response;

  _LoginPageState() {
    _response = new LoginResponse(this);
  }

  void _submit() {
    final form = formKey.currentState;
    if (form!.validate()) {
      setState(() {
        _isLoading = true;
        form.save();
        _response.doLogin(_username, _password);
      });
    }
  }

  void _showSnackBar(String text) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(text),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              height: 100,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'LOGIN',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),
            Form(
              key: formKey,
              child: Column(
                children: [
                  textFieldContainer(context, 'Username',
                      Icons.account_circle_outlined, (val) => _username = val),
                  SizedBox(height: 20),
                  textFieldContainer(context, 'password', Icons.lock,
                      (val) => _password = val),
                ],
              ),
            ),
            SizedBox(height: 20),
            loginButton(context, 'Login', () {
              _submit();
            }),
            loginButton(context, 'SignUp', () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => SignupPage()));
            }),
          ],
        ),
      ),
    );
  }

  @override
  void onLoginError(String error) {
    // TODO: implement onLoginError
    _showSnackBar("Login not successful");
  }

  @override
  void onLoginSuccess(User user) {
    // TODO: implement onLoginSuccess
    Navigator.push(
        context, MaterialPageRoute(builder: (builder) => AppBottomBar()));
  }
}
