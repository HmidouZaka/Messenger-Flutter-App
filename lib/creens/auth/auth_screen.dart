import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:messanger_app/creens/auth/login_screen.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: SvgPicture.asset("assets/images/login_image.svg",
              height: 350, width: 230),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          "Hello",
          style: TextStyle(
              fontSize: 50,
              fontFamily: "Montserrat",
              color: Colors.black,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          child: const Text(
            "Welcome to Messenger App here you can contact with all your friends ",
            style: TextStyle(
                fontSize: 16,
                fontFamily: "Montserrat",
                color: Colors.grey,
                fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
          width: 400,
        ),
        const SizedBox(
          height: 24,
        ),
        Container(
          height: 45,
          width: 200,
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF6C63FF),
                  elevation: 1,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
              child: const Text(
                "Login",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: "Montserrat"),
              )),
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          height: 45,
          width: 200,
          child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  elevation: 0,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: const BorderSide(color: Color(0xFF6C63FF)))),
              child: const Text(
                "Register",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xFF6C63FF),
                    fontSize: 18,
                    fontFamily: "Montserrat"),
              )),
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
          child: const Text(
            "Other Way",
            style: TextStyle(
                fontSize: 12,
                fontFamily: "Montserrat",
                color: Colors.grey,
                fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
          width: 400,
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/linked_in.png"),
              ),
              height: 40,
              width: 40,
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/google.jpeg"),
              ),
              height: 40,
              width: 40,
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/facebook.png"),
              ),
              height: 40,
              width: 40,
            )
          ],
        )
      ],
    );
  }
}
