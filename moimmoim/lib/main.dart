import 'package:flutter/material.dart';
import 'package:projectapp/controller/firebase_auth_prov.dart';
import 'package:projectapp/controller/index.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,);
  runApp(MoimMoim());
}
// Theme Data
  ThemeData _darkTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black54,
      titleTextStyle: TextStyle(color: Colors.white),      
      actionsIconTheme: IconThemeData(
        color: Colors.white,
      ),
      ),
      iconTheme: IconThemeData(color: Colors.white),
      
    accentColor: Colors.red,
    brightness: Brightness.dark,
    primaryColor: Colors.blueAccent,
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.lightBlueAccent,
      disabledColor: Colors.grey,
    ));

  ThemeData _lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(color: Colors.black),   
      actionsIconTheme: IconThemeData(
        color: Colors.black,
      ),    
      ),
      iconTheme: IconThemeData(color: Colors.black),
    accentColor: Colors.pink,
    brightness: Brightness.light,
    primaryColor: Colors.grey,
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.black,
      disabledColor: Colors.grey,
    ));

class MoimMoim extends StatelessWidget {
  const MoimMoim({Key? key}) : super(key: key);

  static const String title = '모임 모임';

  @override
   Widget build(BuildContext context) {
    
    return MultiProvider(
      providers:[
        Provider(
          create: (context) => FirebaseAuthProv,
        ),
        // ChangeNotifierProvider(create: (context) => GroupProvider(),)
      ],
      child: GetMaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.system,
            theme: _lightTheme,
            darkTheme: _darkTheme,
            home: Index(title: 'Home',),            
        ),
    );
  }

}