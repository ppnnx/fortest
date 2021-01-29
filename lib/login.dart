import 'package:flutter/material.dart';
import 'package:testt/authentication_service.dart';
import 'package:testt/register.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
          color: Color(0xFF30578D),
        ),
      ),
      body: Container(
        // alignment: Alignment.center,
        padding: EdgeInsets.all(32),
        margin: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 50),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF30578D),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 50),
                Container(
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle:
                          TextStyle(fontSize: 14, color: Color(0xFF30578D)),
                      filled: true,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle:
                          TextStyle(fontSize: 14, color: Color(0xFF30578D)),
                      filled: true,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                FlatButton(
                  onPressed: () {
                    context.read<AuthenticationService>().signIn(
                      email: emailController.text.trim(),
                      password: passwordController.text.trim()
                    );
                  },
                  color: Color(0xFF30578D),
                  shape: OutlineInputBorder(),
                  padding: EdgeInsets.all(15),
                  child: Text('Login', style: TextStyle(color: Colors.white)),
                ),
                SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot password',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xFF30578D)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 100),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Don’t have an account?',
                    style: TextStyle(color: Color(0xFF30578D)),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                      );
                    },
                    child: Text(
                      'Create one.',
                      style: TextStyle(
                        color: Color(0xFF30578D),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
