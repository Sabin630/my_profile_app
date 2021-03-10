import 'package:flutter/material.dart';
import 'package:my_profile_card/widgets/info_card.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[200],
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/Gardenmart.jpeg'),
            radius: 30.0,
          ),
          Text(
            " Garden Mart",
            style: TextStyle(
              fontSize: 35.0,
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
            ),
          ),
          Text("Department Store",
              style: TextStyle(
                fontSize: 35.0,
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              )),
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile.jpg'),
            radius: 80.0,
          ),
          Text(
            " Mr. Sabin Shrestha",
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontFamily: 'Akaya Kanadaka',
            ),
          ),
          Text(
            "Software Support Executive",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontFamily: 'Open Sans',
            ),
          ),
          InfoCard(
            text: '+977-9851204362',
            icon: Icons.phone,
            onPressed: () async {
              const telUrl = 'tel:+977-9851204362';
              if (await launcher.canLaunch(telUrl)) {
                await launcher.launch(telUrl);
              } else {
                print('Could not launch $telUrl');
              }
            },
          ),
          InfoCard(
            text: 'sabinkumar630@gmail.com',
            icon: Icons.email,
            onPressed: () async {
              const emailUrl = 'mailto:sabinkumar630@gmail.com';
              if (await launcher.canLaunch(emailUrl)) {
                await launcher.launch(emailUrl);
              } else {
                print('Could not launch $emailUrl');
              }
            },
          ),
          InfoCard(
            text: 'https://sabinshrestha630.com.np',
            icon: Icons.web,
            onPressed: () async {
              const url = 'https://sabinshrestha630.com.np';
              if (await launcher.canLaunch(url)) {
                await launcher.launch(url);
              } else {
                print('Could not launch $url');
              }
            },
          ),
          Container(
            height: 40,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.green,
            ),
            child: Center(
              child: Text(
                'Kamalbinayak, Muldhoka, Bhaktapur',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
