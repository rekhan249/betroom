import 'package:brb_100x/firebase_options.dart';
import 'package:brb_100x/views/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDhnliHbm9jlkXPSOT2cNl7iE-861-RnXA",
            authDomain: "betroom24-7b368.firebaseapp.com",
            databaseURL: "https://betroom24-7b368-default-rtdb.firebaseio.com",
            projectId: "betroom24-7b368",
            storageBucket: "betroom24-7b368.appspot.com",
            messagingSenderId: "1046381169929",
            appId: "1:1046381169929:web:4b49fb69f3a75130ae17d8"));
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        title: 'BetRoom24',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.transparent),
          useMaterial3: true,
        ),
        home: const ResponsiveHomePage(),
      ),
    );
  }
}
