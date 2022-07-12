import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectapp/controller/theme_provider.dart';
import 'package:provider/provider.dart';


class ChangeThemeButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    ThemeData themeData = new ThemeData();
    return Switch.adaptive(
      value: themeProvider.isDarkMode,
      activeColor: Colors.grey,
      activeTrackColor: Colors.white,
      inactiveThumbColor: Colors.cyan,
      inactiveTrackColor: Colors.black87,
      onChanged: (value) {
        final provider = Provider.of<ThemeProvider>(context, listen: false);
        provider.toggleTheme(value);
      },
    );  
  }
}
