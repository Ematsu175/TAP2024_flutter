import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tap_2024/settings/value_listener.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Topicos Avanzados'),),
      drawer: menuLateral(context),
    );
  }

  Widget menuLateral(BuildContext context){
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/user.png')
          )
        ),
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
              ),
              accountName: Text('Emanuel Vazquez Almanza'), 
              accountEmail: Text('emavazquez954@gmail.com')
            ),
            ListTile(
              title: Text('Login'),
              subtitle: Text('Direccion de youtube'),
              tileColor: Colors.grey,
              leading: Icon(Icons.key),
              trailing: Icon(Icons.chevron_right),
              onTap: () => Navigator.pushNamed(context, "/login2"),
            ),
            DayNightSwitcher(
              isDarkModeEnabled: ValueListener.isDark.value, 
              onStateChanged: (isDarkModeEnabled){
                ValueListener.isDark.value = isDarkModeEnabled;
              },
            )
          ],
        ),
      ),
    );
  }

}