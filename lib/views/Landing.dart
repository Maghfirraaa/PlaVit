import 'package:flutter/material.dart';
import 'package:navigasi/views/HomeScreen.dart';
import 'package:navigasi/views/Login.dart';

class Landing extends StatefulWidget {
  Landing({Key? key}) : super(key: key);

  @override
  State<Landing> createState() => _LandingState();
}
class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Image.asset(
                'image/plant.jpg',
                width: 350,
                height: 450,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Find Out Your Companing \nOn Our Plant Shop",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),
              Builder(
                builder: (context) => RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(130, 16, 130, 16),
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Builder(
                  builder: (context) => OutlinedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    side: BorderSide(color: Colors.black54))
                                    )
                                    ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(130, 16, 130, 16),
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54),
                          ),
                        ),
                      )),
            ],
          ),
        ),
      ),
    );
  }
}
