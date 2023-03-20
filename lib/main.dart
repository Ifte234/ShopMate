import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopmate/screens/layout_screen.dart';
import 'package:shopmate/screens/login_screen.dart';
import 'package:shopmate/screens/signup_screen.dart';
import 'package:shopmate/services/home_screen.dart';
import 'package:sizer/sizer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
//   main(){
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAteKQBFCioCkOtGFRXNSQ6uXoBFH37FSI",
            authDomain: "shopmate-e3e32.firebaseapp.com",
            projectId: "shopmate-e3e32",
            storageBucket: "shopmate-e3e32.appspot.com",
            messagingSenderId: "478101576238",
            appId: "1:478101576238:web:26a2dbda47b7c6a3431dbf"
        )
    );
  }
  else {
    await Firebase.initializeApp();
  }

  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) {
      return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(background: Colors.white)),
      home:LayoutScreen()
      // HomeScreen(),
      // LoginScreen(),
    );

        });
  }
}
