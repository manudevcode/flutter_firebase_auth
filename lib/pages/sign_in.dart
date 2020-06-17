import 'package:firebase_auth_provider/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignIn extends StatefulWidget {
  SignIn({Key key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);

    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text('Inicia con Google'),
          onPressed: () async {
            await authService.googleSignIn();
          },
        ),
      ),
    )
  }
}