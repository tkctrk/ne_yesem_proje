import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(benimUygulamam());
}
class benimUygulamam extends StatelessWidget {
  const benimUygulamam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text(
            'Bugün Ne Yesem ?',
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
          ),
          ),
        ),
        body: yemekSayfasi(),
      ),
    );
  }
}

class yemekSayfasi extends StatefulWidget {
  @override
  State<yemekSayfasi> createState() => _yemekSayfasiState();
}

class _yemekSayfasiState extends State<yemekSayfasi> {
  int corbaNo=1;

  int yemekNo=1;

  int tatliNo=1;

  List<String> corbaAdlari=[
    "Mercimek",
    "Tarhana",
    "Tavuksuyu",
    "Düğün Çorbası",
    "Yoğutlu Çorba"];
  List<String> yemekAdlari=[
    "Yemek1",
    "Yemek2",
    "Yemek3",
    "Yemek4",
    "Yemek5"];
  List<String> tatliAdlari=[
    "Tatli1",
    "Tatli2",
    "Tatli3",
    "Tatli4",
    "Tatli5"];
  void Getir(){
    setState(() {
      corbaNo=Random().nextInt(5)+1;
      yemekNo=Random().nextInt(5)+1;
      tatliNo=Random().nextInt(5)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
      children: <Widget>[
        Expanded(child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextButton(
              child: Image.asset("resimler/corba_$corbaNo.jpg"),
            onPressed: Getir,
          ),
        ),
        ),
        Text(corbaAdlari[corbaNo-1],style:TextStyle(fontWeight: FontWeight.bold),),
        Container(
          width: 200,
          child: Divider(
            height: 5,
            color: Colors.black87,
          ),
        ),
        Expanded(child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextButton(
            onPressed: Getir,
              child: Image.asset("resimler/yemek_$yemekNo.jpg"),
          ),
        ),
        ),
        Container(
          width: 200,
          child: Divider(
            height: 5,
            color: Colors.black87,
          ),
        ),
        Text(yemekAdlari[yemekNo-1],style:TextStyle(fontWeight: FontWeight.bold),),
        Expanded(child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextButton(
              child: Image.asset("resimler/tatli_$tatliNo.jpg"),
            onPressed: Getir
          ),
        ),
        ),
        Text(tatliAdlari[tatliNo-1],style:TextStyle(fontWeight: FontWeight.bold),),
        Container(
          width: 200,
          child: Divider(
            height: 5,
            color: Colors.black87,
          ),
        ),
      ],
      ),
    );
  }
}

