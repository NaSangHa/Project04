import 'package:flutter/material.dart';
import 'package:projectapp/common/index.dart';
import 'package:projectapp/controller/firebase_auth_prov.dart';
import 'package:projectapp/controller/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String title = 'Talk&Stock';

  @override
   Widget build(BuildContext context) {
    
    return MultiProvider(
      providers:[
        Provider(
          create: (context) => FirebaseAuthProv,
        ),
      ],      
      child: GetMaterialApp(
            debugShowCheckedModeBanner: false,
            // themeMode: themeProvider.themeMode,
            themeMode: ThemeMode.system,
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            home: Index(title: 'Home'),
          ),
    );
  }
}