import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      width: double.infinity,
      child: ListView(children: [
        Container(
          width: double.infinity,
          height: 50,
          child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Color(0xFF6C63FF),
                        size: 20,
                      ))
                ],
              )),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 40,vertical: 25),
            child: SvgPicture.asset("assets/images/mobile_image.svg",height: 200,width: 100),
          ),
        ),
        const SizedBox(
          width: double.infinity,
          child: Text(
            "Login",
            style: TextStyle(
                fontSize: 50,
                fontFamily: "Montserrat",
                color: Colors.black,
                fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 2,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            "yiu can login if you have an account",
            style: TextStyle(
                fontSize: 16,
                fontFamily: "Montserrat",
                color: Colors.grey,
                fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: TextField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Email"),
                    hintText: "Enter your Email"))),
        const SizedBox(
          height: 10,
        ),
        const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: TextField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Password"),
                    hintText: "Enter your Password"))),
        const SizedBox(
          height: 16,
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: ElevatedButton(
                onPressed: () {

                },
                child: Text(
                  "Login",
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.white,fontSize: 20),
                ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF6C63FF),
                padding: EdgeInsets.symmetric(horizontal: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                )
              ),
            )
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
          width: 400,
          child: const Text(
            "Other Way",
            style: TextStyle(
                fontSize: 12,
                fontFamily: "Montserrat",
                color: Colors.grey,
                fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SizedBox(
              height: 40,
              width: 40,
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/linked_in.png"),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            SizedBox(
              height: 40,
              width: 40,
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/google.jpeg"),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            SizedBox(
              height: 40,
              width: 40,
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/facebook.png"),
              ),
            )
          ],
        ),
        SizedBox(height: 30,)
      ]),
    )));
  }
}
