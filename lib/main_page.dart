// ignore_for_file: camel_case_types, prefer_const_constructors, unused_import
import 'package:flutter/material.dart';
import 'package:flutter_pem_mobile/TopUpPage.dart';
import 'package:flutter_pem_mobile/profil.dart';
import 'package:flutter_pem_mobile/song_page.dart';
import 'package:flutter_pem_mobile/Calculator_page.dart';
import 'package:flutter_pem_mobile/Todo_page.dart';
import 'package:flutter_pem_mobile/WalletPage.dart';




class main_page  extends StatelessWidget {
  const main_page ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("WELCOME TO POTIPY",
          style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.w800)),),
      body: const MyStatefulWidget(),
    );
  }
}


class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);
  
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
  }

  class _MyStatefulWidgetState extends State<MyStatefulWidget> {
    double walletBalance = 0;

    @override
    Widget build(BuildContext context) {
      return Padding(
          padding: const EdgeInsets.all(10),
      child: ListView(
      children: <Widget>[
      Container(
      height: 55,
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: ElevatedButton(
            child: const Text('Profile'),
            onPressed: ()  {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const profil_page();
              }));
            },
          )
      ),
      Container(
        height: 55,
         padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: ElevatedButton(
           child: const Text('Download Song'),
            onPressed: ()  {
             Navigator.push(context, MaterialPageRoute(builder: (context) {
             return song_page();
        }));
         },
         )
         ),
        Container(
        height: 55,
         padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: ElevatedButton(
           child: const Text('Calculator'),
            onPressed: ()  {
             Navigator.push(context, MaterialPageRoute(builder: (context) {
             return Calculator_page();
        }));
         },
         )
         ),
         Container(
        height: 55,
         padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: ElevatedButton(
           child: const Text('Todo List'),
            onPressed: ()  {
             Navigator.push(context, MaterialPageRoute(builder: (context) {
             return Todo_page();
        }));
         },
         )
         ),
           Container(
            height: 55,
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: ElevatedButton(
              child: const Text('TopUp'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return TopUpPage();
                })).then((addedBalance) {
                  if (addedBalance != null) {
                    walletBalance += addedBalance;
                  }
                });
              },
            ),
          ),
           Container(
            height: 55,
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: ElevatedButton(
              child: const Text('Dompet'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return WalletPage(balance: walletBalance); // Menggunakan saldo aktual
                }));
              },
            )
         ), 
        ],
       ));
    }
  }