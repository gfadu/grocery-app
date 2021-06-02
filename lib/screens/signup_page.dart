import 'package:flutter/material.dart';
import '../widgets/general/textfields.dart';
import '../widgets/general/app_button.dart';
import './login_page.dart';
import '../data/database_helper.dart';
import '../models/user.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool _isLoading = false;
  final formKey = new GlobalKey<FormState>();
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  late String _email, _username, _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png', height: 100),
            SizedBox(
              height: 20,
            ),
            Text(
              'SIGN UP',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Form(
              key: formKey,
              child: Column(
                children: [
                  textFieldContainer(
                      context, 'email', Icons.email, (val) => _email = val),
                  SizedBox(height: 20),
                  textFieldContainer(context, 'username',
                      Icons.account_circle_outlined, (val) => _username = val),
                  SizedBox(height: 20),
                  textFieldContainer(context, 'password', Icons.lock,
                      (val) => _password = val),
                  SizedBox(height: 20),
                ],
              ),
            ),
            SizedBox(height: 20),
            loginButton(context, 'SignUp', _submit)
          ],
        ),
      ),
    );
  }

  void _submit() {
    final form = formKey.currentState;

    if (form!.validate()) {
      setState(() {
        _isLoading = true;
        form.save();
        var user = new User(_email, _username, _password);
        var db = new DatabaseHelper();
        db.saveUser(user);
        _isLoading = false;
        Navigator.push(
            context, MaterialPageRoute(builder: (builder) => LoginPage()));
      });
    }
  }
}
