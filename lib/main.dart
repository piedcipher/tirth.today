import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

enum Socials {
  github,
  stackOverflow,
  medium,
  twitter,
  linkedIn,
}

extension SocialsExtension on Socials {
  Future<bool> launcher() async {
    final url = Uri.parse(_socials[this]!);
    if (await canLaunchUrl(url)) return await launchUrl(url);
    return false;
  }
}

const _socials = {
  Socials.github: 'https://github.com/piedcipher',
  Socials.stackOverflow: 'https://stackoverflow.com/users/4593315/tirth-patel',
  Socials.medium: 'https://medium.com/@piedcipher',
  Socials.twitter: 'https://x.com/piedcipher',
  Socials.linkedIn: 'https://linkedin.com/in/tirth-patel',
};

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tirth Patel',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3EEFB),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: ListTile(
                title: const Text(
                  'Tirth Patel',
                  style: TextStyle(
                    fontSize: 28,
                    color: Color(0xFF002b59),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailing: OverflowBar(
                  spacing: 8,
                  overflowSpacing: 8,
                  children: [
                    IconButton(
                      icon: const Icon(FontAwesomeIcons.github),
                      onPressed: () {
                        Socials.github.launcher();
                      },
                    ),
                    IconButton(
                      icon: const Icon(FontAwesomeIcons.stackOverflow),
                      onPressed: () {
                        Socials.stackOverflow.launcher();
                      },
                    ),
                    IconButton(
                      icon: const Icon(FontAwesomeIcons.medium),
                      onPressed: () {
                        Socials.medium.launcher();
                      },
                    ),
                    IconButton(
                      icon: const Icon(FontAwesomeIcons.xTwitter),
                      onPressed: () {
                        Socials.twitter.launcher();
                      },
                    ),
                    IconButton(
                      icon: const Icon(FontAwesomeIcons.linkedinIn),
                      onPressed: () {
                        Socials.linkedIn.launcher();
                      },
                    ),
                  ],
                ),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.redAccent[100],
              ),
              child: const SizedBox(height: 1.5, width: double.infinity),
            ),
            const SizedBox(height: 5),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.redAccent[100],
              ),
              child: const SizedBox(height: 1.5, width: double.infinity),
            ),
            const Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.only(left: 120.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      'engineer, photographer, artist',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF002b59),
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
