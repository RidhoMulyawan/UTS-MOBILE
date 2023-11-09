// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class profil_page extends StatelessWidget {
  const profil_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("PROFIL PAGE",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800)),
               backgroundColor: Color.fromRGBO(3, 11, 244, 1)
               
      ),
      body: Profile(),
    );
  }
}

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int friend = 5;

  List<String> images = [
    'https://images.pexels.com/photos/18976125/pexels-photo-18976125/free-photo-of-man-on-the-background-of-a-circle-from-orange-and-blue-light.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
    'https://images.pexels.com/photos/943235/pexels-photo-943235.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/2380794/pexels-photo-2380794.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    'https://images.pexels.com/photos/16877612/pexels-photo-16877612/free-photo-of-smiling-woman-with-a-book.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    'https://images.pexels.com/photos/18290299/pexels-photo-18290299/free-photo-of-a-woman-taking-a-photo-in-a-vineyard.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
  ];

  List<String> names = [
   'Anggi',
    'Fadhlan',
    'Bimo',
    'Nina',
    'Ineu',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(padding: EdgeInsets.zero, children: <Widget>[
      SizedBox(height: 50),
      profileImage(70,
          'https://images.pexels.com/photos/1656684/pexels-photo-1656684.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
      SizedBox(height: 20),
      description(),
      SizedBox(height: 80),
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 27.0, bottom: 3),
              child: Text(
                "Friend List ($friend)",
                style: TextStyle(fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(
                height: 140,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: friend,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          profileImage(40, images[index]),
                          SizedBox(height: 8),
                          Text(
                            names[index],
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      )
    ]));
  }

  Widget profileImage(double sizeRadius, String linkImage) => CircleAvatar(
        radius: sizeRadius,
        backgroundColor: Colors.grey.shade800,
        child: ClipOval(
          child: Image.network(
            linkImage,
            fit: BoxFit.cover,
            width: sizeRadius * 2,
            height: sizeRadius * 2,
          ),
        ),
      );

  Widget description() => Column(
        children: [
          const SizedBox(height: 8),
          Text(
            'Ridho Mulyawan Efendi',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            '152021157',
            style: TextStyle(fontSize: 20),
          )
        ],
      );
}
