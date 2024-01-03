import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:messanger_app/creens/auth/auth_screen.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MaterialApp(home: App(),debugShowCheckedModeBanner: false,));
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Color(0xFF6C63FF)
    ));
    final user = FirebaseAuth.instance;
    if (user.currentUser == null) {
      return SafeArea(
        child: Scaffold(body: AuthScreen()) ,
      );
    } else {
      return  Scaffold();
    }
  }
}
