import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SigninScreen extends StatefulWidget {
  SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  //TODO 1 : variabel
  final TextEditingController _usernameController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  String _errorText = " ";

  bool _isSignedIn = false;

  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO 2 : APPBAR
      appBar: AppBar(title: const Text("Sign IN")),
      //TODO 3 : BODY
      body: Center(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
              child: Column(
            //TODO 4 : ALIGNMENT
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // TODO 5 : NAMA PENGGUNA
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                    labelText: "Nama Pengguna", border: OutlineInputBorder()),
              ),
              const SizedBox(height: 20),
              //TODO 6 : PASSWORD
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                    labelText: "Kata Sandi",
                    errorText: _errorText.isNotEmpty ? _errorText : null,
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                        icon: Icon(_obscurePassword
                            ? Icons.visibility_off
                            : Icons.visibility))),
              ),
              //TODO 7 : BUTTON
              SizedBox(height: 20),
              ElevatedButton(onPressed: () {}, child: Text("Sing In")),
              //TODO 8 : TEXT BUTTON SIGN UP
              // TextButton(
              //     onPressed: () {},
              //     child: Text("Belum Punya Akun ? Daftar Disini.")),
              RichText(
                  text: TextSpan(
                      text: "Belum Punya Akun?",
                      style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                          fontSize: 16),
                      recognizer: TapGestureRecognizer()..onTap = () {}))
            ],
          )),
        ),
      )),
    );
  }
}
