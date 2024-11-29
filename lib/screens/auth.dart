import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});
  @override
  State<AuthScreen> createState() {
    return _AuthScreenState();
  }
}

class _AuthScreenState extends State<AuthScreen> {

  var _isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              margin: const EdgeInsets.only(top: 30, bottom: 20, left: 20, right: 20),
              child: Image.asset('assets/images/chat.png'),
            ),
            Card(
              margin: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Form(child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Email Address",
                        ),
                        keyboardType: TextInputType.emailAddress,
                        autocorrect: false,
                        textCapitalization: TextCapitalization.none,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          labelText: "Password"
                        ),
                        obscureText: true,
                      ),
                      const SizedBox(height: 30,),
                      ElevatedButton(onPressed: () {},
                      style: ElevatedButton.styleFrom(backgroundColor: Theme.of(context).colorScheme.primaryContainer),
                       child: Text(_isLogin ? "SignUP" : "Login")),

                      TextButton(onPressed: () {
                        setState(() {
                          _isLogin = !_isLogin;
                        });
                      },
                       child: Text(_isLogin ? "Already have an account. Login" : "Create an account"))
                    ],
                  ),),
                ),),
            )
          ],
        ),
      ),
    ),
    );
  }
}