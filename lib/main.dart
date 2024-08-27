 import 'package:flutter/material.dart';
 import 'package:font_awesome_flutter/font_awesome_flutter.dart';
 import 'package:url_launcher/url_launcher.dart';
 
 enum Socials {
   github,
   stackOverflow,
   medium,
   twitter,
   linkedIn,
   speakerDeck,
 }
 
 extension SocialsExtension on Socials {
   void launcher() async {
     final url = Uri.parse(_socials[this]!);
     if (await canLaunchUrl(url)) {
       await launchUrl(url);
     }
   }
 
   String get tooltip {
     switch (this) {
       case Socials.github:
         return 'GitHub';
       case Socials.stackOverflow:
         return 'Stack Overflow';
       case Socials.medium:
         return 'Medium';
       case Socials.twitter:
         return 'Twitter';
       case Socials.linkedIn:
         return 'LinkedIn';
       case Socials.speakerDeck:
         return 'Speaker Deck';
     }
   }
 }
 
 const _socials = {
   Socials.github: 'https://github.com/piedcipher',
   Socials.stackOverflow: 'https://stackoverflow.com/users/4593315/tirth-patel',
   Socials.medium: 'https://medium.com/@piedcipher',
   Socials.twitter: 'https://x.com/piedcipher',
   Socials.linkedIn: 'https://linkedin.com/in/tirth-patel',
   Socials.speakerDeck: 'https://speakerdeck.com/piedcipher',
 };
 
 abstract class Data {
   static const name = 'Tirth Patel';
   static const tagline = 'engineer, photographer, artist';
 }
 
 void main() {
   runApp(const MyApp());
 }
 
 class MyApp extends StatelessWidget {
   const MyApp({super.key});
 
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       title: Data.name,
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
         child: Stack(
           children: [
             Row(
               children: [
                 const SizedBox(width: 60),
                 DecoratedBox(
                   decoration: BoxDecoration(
                     color: Colors.redAccent[100],
                   ),
                   child: const SizedBox(width: 1.5, height: double.infinity),
                 ),
                 const SizedBox(width: 5),
                 DecoratedBox(
                   decoration: BoxDecoration(
                     color: Colors.redAccent[100],
                   ),
                   child: const SizedBox(width: 1.5, height: double.infinity),
                 ),
                 const Spacer(),
                 DecoratedBox(
                   decoration: BoxDecoration(
                     color: Colors.redAccent[100],
                   ),
                   child: const SizedBox(width: 1.5, height: double.infinity),
                 ),
                 const SizedBox(width: 5),
                 DecoratedBox(
                   decoration: BoxDecoration(
                     color: Colors.redAccent[100],
                   ),
                   child: const SizedBox(width: 1.5, height: double.infinity),
                 ),
                 const SizedBox(width: 60),
               ],
             ),
             Column(
               children: [
                 Expanded(
                   child: ListView.builder(
                     padding: const EdgeInsets.symmetric(vertical: 60),
                     physics: const NeverScrollableScrollPhysics(),
                     itemBuilder: (context, index) => Column(
                       children: [
                         const SizedBox(height: 40),
                         DecoratedBox(
                           decoration: BoxDecoration(
                             color: Colors.black26.withOpacity(.08),
                           ),
                           child: const SizedBox(
                             width: double.infinity,
                             height: 1.5,
                           ),
                         ),
                         const SizedBox(height: 10),
                       ],
                     ),
                   ),
                 ),
                 const SizedBox(height: 60),
               ],
             ),
             Column(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 const SizedBox(height: 60),
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
                 const Spacer(),
                 Expanded(
                   child: Column(
                     children: [
                       const Text(
                         Data.name,
                         style: TextStyle(
                           fontSize: 28,
                           color: Color(0xFF002b59),
                           fontWeight: FontWeight.w500,
                         ),
                       ),
                       const SizedBox(height: 12),
                       const Text(
                         Data.tagline,
                         style: TextStyle(
                           fontSize: 16,
                           color: Color(0xFF002b59),
                         ),
                       ),
                       const SizedBox(height: 12),
                       OverflowBar(
                         spacing: 8,
                         overflowSpacing: 8,
                         children: [
                           IconButton(
                             tooltip: Socials.github.tooltip,
                             icon: const Icon(FontAwesomeIcons.github),
                             onPressed: () {
                               Socials.github.launcher();
                             },
                           ),
                           IconButton(
                             tooltip: Socials.stackOverflow.tooltip,
                             icon: const Icon(FontAwesomeIcons.stackOverflow),
                             onPressed: () {
                               Socials.stackOverflow.launcher();
                             },
                           ),
                           IconButton(
                             tooltip: Socials.medium.tooltip,
                             icon: const Icon(FontAwesomeIcons.medium),
                             onPressed: () {
                               Socials.medium.launcher();
                             },
                           ),
                           IconButton(
                             tooltip: Socials.twitter.tooltip,
                             icon: const Icon(FontAwesomeIcons.xTwitter),
                             onPressed: () {
                               Socials.twitter.launcher();
                             },
                           ),
                           IconButton(
                             tooltip: Socials.linkedIn.tooltip,
                             icon: const Icon(FontAwesomeIcons.linkedinIn),
                             onPressed: () {
                               Socials.linkedIn.launcher();
                             },
                           ),
                           IconButton(
                             tooltip: Socials.speakerDeck.tooltip,
                             icon: const Icon(FontAwesomeIcons.speakerDeck),
                             onPressed: () {
                               Socials.speakerDeck.launcher();
                             },
                           ),
                         ],
                       ),
                     ],
                   ),
                 ),
                 const Spacer(),
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
                 const SizedBox(height: 60),
               ],
             ),
           ],
         ),
       ),
     );
   }
 }
