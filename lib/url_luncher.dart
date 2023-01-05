import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://flutter.dev');
final Uri phoneNumber = Uri.parse('tel:6354782500');
// final Uri email = Uri.parse('mailto: 6354782500');

class UrlLuncher extends StatefulWidget {
  const UrlLuncher({super.key});

  @override
  State<UrlLuncher> createState() => _UrlLuncherState();
}

class _UrlLuncherState extends State<UrlLuncher> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text('About US'),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.call),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          Text('Contact Number'),
                          TextButton(
                              onPressed: () {
                                _makePhoneCall();
                              },
                              child: Text(
                                '+91 6354782500',
                                style: TextStyle(color: Colors.orange),
                              )),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.email),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          Text('Email'),
                          TextButton(
                              onPressed: () {
                                _makeEmail();
                              },
                              child: Text(
                                'rutvikkalariya11@gmail.com',
                                style: TextStyle(color: Colors.orange),
                              )),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.location_on),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          Text('Location'),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Akash Technolabs',
                              style: TextStyle(color: Colors.orange),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.http),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          Text('Website'),
                          TextButton(
                            onPressed: () {
                              _launchUrl();
                            },
                            child: Text(
                              'https://flutter.dev',
                              style: TextStyle(color: Colors.orange),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          )),
    );
  }
}

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}

Future<void> _makePhoneCall() async {
  if (!await launchUrl(phoneNumber)) {
    throw 'Could not launch $phoneNumber';
  }
}

// Future<void> _makeEmail() async {
//   if (!await launchUrl(email)) {
//     throw 'Could not launch $email';
//   }
// }

// Future<void> _makePhoneCall(String phoneNumber) async {
//   final Uri launchUri = Uri(
//     scheme: 'tel',
//     path: phoneNumber,
//   );
//   await launchUrl(launchUri);
// }

Future<void> _makeEmail() async {
  final Uri launchUri = Uri(
    scheme: 'mailto',
    path: 'rutvikkalariya11@gmail.com',
  );
  await launchUrl(launchUri);
}
