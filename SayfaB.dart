import 'package:flutter/material.dart';
import 'package:sayfa_gecis_uygulamasi/main.dart';

class SayfaB extends StatefulWidget {
  const SayfaB({super.key});

  @override
  State<SayfaB> createState() => _SayfaBState();
}

class _SayfaBState extends State<SayfaB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("SayfaB"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: Text("Geldiği sayfaya dön"),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
            TextButton(
              child: Text("Anasayfaya dön"),
              onPressed: (){

                Navigator.of(context).popUntil((route) => route.isFirst);

              },
            ),
            TextButton(
              child: Text("Anasayfaya geçiş yap"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Anasayfa()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
