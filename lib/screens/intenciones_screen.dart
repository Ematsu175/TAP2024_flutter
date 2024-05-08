import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class IntencionesScreen extends StatelessWidget {
  const IntencionesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Intenciones'),),
      body: GridView(
        padding: EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8
          ),
        children: [
          intentCard(icon: Icons.web_stories, title: 'https://itcelaya.edu.mx', sizeLetter: 20, actionFunction: openWeb),
          intentCard(title: '4111253303', icon: Icons.phone_android_rounded, sizeLetter: 25),
          intentCard(title: 'sms: 4111253303', icon: Icons.sms, sizeLetter: 20),
          intentCard(title: 'Email: emavazquez@gmail.com', icon: Icons.email, sizeLetter: 10),
        ],
      ),
    );
  }

  openWeb() async {
    Uri uri = Uri.parse('https://celaya.tecnm.mx');
    if(await canLaunchUrl(uri)){

    }
  }

  Widget intentCard({required String title, required IconData icon, double sizeLetter = 25, Function()? actionFunction}){
    return GestureDetector(
      onTap: actionFunction,
      child: Container(
        height: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.blueAccent
        ),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 80,),
            Text(title)
          ],
        ),
      ),
    );
  }
}