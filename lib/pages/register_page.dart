import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mini_project/services/auth.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
            // ignore: deprecated_member_use
            RaisedButton(
              onPressed: () {
                AuthenticationService service =
                    AuthenticationService(FirebaseAuth.instance);
                service.signUp(
                    email: emailController.text,
                    password: passwordController.text);
              },
              child: Text('Register'),
            ),
            // ignore: deprecated_member_use
            FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: const Text('Sudah daftar? Login sekarang'))
          ],
        ),
      ),
    );
  }
}
