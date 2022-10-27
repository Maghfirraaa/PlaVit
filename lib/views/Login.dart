import 'package:flutter/material.dart';
import 'package:navigasi/views/HomeScreen.dart';
import 'package:navigasi/views/Landing.dart';
import 'package:navigasi/views/landingPage.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Widget build(BuildContext context) {

    TextEditingController usernameCotroller = TextEditingController();
    TextEditingController pwdController = TextEditingController();

    var username = "Maghfirraaa";
    var pwd = "010402";

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Landing()));
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ));
        }),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 35),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: const <Widget>[
                  Text(
                    "Welcome Back",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Poppins Bold',
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text("Login to yout account",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 17,
                        fontFamily: 'Poppins Light',
                      )),
                ],
              ),
            ),
            SizedBox(height: 25),
            TextField(
              controller: usernameCotroller,
              style: const TextStyle(
                fontFamily: 'Poppins Light',
                fontSize: 16,
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: "Username",
                hintText: "Username",
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                hintStyle: const TextStyle(
                  fontFamily: 'Poppins Light',
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 18),
            TextField(
              controller: pwdController,
              style: const TextStyle(
                fontFamily: 'Poppins Light',
                fontSize: 16,
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: "Password",
                hintText: "Password",
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                hintStyle: const TextStyle(
                  fontFamily: 'Poppins Light',
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 15),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Forgot password?",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 16,
                  fontFamily: 'Poppins Light',
                ),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                if (usernameCotroller.text == username) {
                  if (pwdController.text == pwd) {
                    var route = new MaterialPageRoute(
                        builder: (BuildContext builder) =>
                            new landingPage(param: usernameCotroller.text)
                            );
                    Navigator.of(context).pushReplacement(route);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      backgroundColor: Colors.red,
                      content: Text("Password Salah"),
                    ));
                  }
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    backgroundColor: Colors.red,
                    content: Text("Username Salah"),
                  ));
                }
              },
              child: const Text("Login",
                  style: TextStyle(
                    fontFamily: 'Poppins Bold',
                    fontSize: 18,
                  )),
              style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  minimumSize: const Size.fromHeight(55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?",
                    style: TextStyle(
                      fontFamily: 'Poppins Light',
                      fontSize: 16,
                      color: Colors.black,
                    )),
                SizedBox(width: 7),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  child: Text("Sign up",
                      style: TextStyle(
                        fontFamily: 'Poppins Light',
                        fontSize: 16,
                        color: Colors.green,
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
