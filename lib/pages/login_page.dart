import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mini_project/services/auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                label: Text('Email'),
                hintText: 'Masukan Email',
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                label: Text('Password'),
                hintText: 'Masukan Password',
              ),
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // ignore: deprecated_member_use
                RaisedButton(
                  onPressed: () {
                    AuthenticationService service =
                        AuthenticationService(FirebaseAuth.instance);
                    service.signIn(
                        email: emailController.text,
                        password: passwordController.text);
                    Navigator.pushReplacementNamed(context, '/');
                  },
                  child: const Text('Login'),
                ),
                // ignore: deprecated_member_use
                RaisedButton(
                  onPressed: () {
                    AuthenticationService service =
                        AuthenticationService(FirebaseAuth.instance);
                    service.signInGoogle(
                        email: emailController.text,
                        password: passwordController.text);
                  },
                  child: const Text('Login with Google'),
                ),
              ],
            ),
            // ignore: deprecated_member_use
            FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: const Text('Belum daftar? register sekarang'))
          ],
        ),
      ),
    );
  }
}
