import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:projectapp/controller/firebase_auth_prov.dart';
import 'package:projectapp/widgets/changethemebuttonwidget.dart';
import 'package:projectapp/common/profile.dart';
import 'package:provider/provider.dart';
import 'package:settings_ui/settings_ui.dart';


class Page4 extends StatefulWidget {
  String data = '';

  Page4({Key? key}) : super(key: key);

  @override
  _Page4 createState() => _Page4();
}

class _Page4 extends State<Page4> {

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    print('Page4');

    // final text = ThemeProvider(context).themeMode == ThemeMode.dark
    //     ? 'Dark'
    //     : 'Light';

    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).scaffoldBackgroundColor,        
        elevation: 1,
        
        centerTitle: true,
        title: Text('Stock&Talk',
            style: GoogleFonts.expletusSans(
              fontSize: 29,              
              ),
            ),
      ),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: Text('Common'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: Icon(Icons.language),
                trailing: Text('한국어'),
                title: Text('Language'),
              ),
              SettingsTile(
                leading: Icon(Icons.format_paint),
                title: Text('Theme :'), //$text'),
                // value: ChangeThemeButtonWidget(),
              ),
            ],
          ),
          SettingsSection(
            title: Text('Notification'),
            tiles: <SettingsTile>[
              SettingsTile.switchTile(
              onToggle: (value) {},
              initialValue: true,
              leading: Icon(Icons.notifications_rounded),
              title: Text('Stock notification'),
             ),
             SettingsTile.switchTile(
              onToggle: (value) {},
              initialValue: true,
              leading: Icon(Icons.notifications_rounded),
              title: Text('Follow notification'),
             ),
            ],
          ),
          SettingsSection(
            title: Text('User'),
            tiles: <SettingsTile>[
              SettingsTile(
               onPressed: (context) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => Profile()));
               },
                leading: Icon(Icons.person_pin_outlined),
                title: Text('정보 수정'),                
              ),
              SettingsTile(
                leading: Icon(Icons.logout),
                title: Text('로그 아웃'),
                trailing: 
                  Container(
                    child: IconButton(onPressed: () {
                      context.read<FirebaseAuthProv>().signOut(context);
                    },
                      icon: Icon(Icons.arrow_forward_ios))
                )
              ),
              SettingsTile(
               onPressed: (context) {},
                leading: Icon(Icons.exit_to_app),
                title: Text('회원 탈퇴'),                
              ),
            ],
          ),        
        ],
      ),
    );
  }


 
}
