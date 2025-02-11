import 'package:flutter/material.dart';
import 'package:sayfa_gecis_uygulamasi/Kisiler.dart';
import 'package:sayfa_gecis_uygulamasi/SayfaB.dart';

class SayfaA extends StatefulWidget {

  Kisiler kisi;
  SayfaA({required this.kisi});

  @override
  State<SayfaA> createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("SayfaA"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: Text("Sayfa B ye git"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SayfaB()));
              },
            ),
            Text("İsim : ${widget.kisi.isim}"),
            Text("Yaş : ${widget.kisi.yas}"),
            Text("Boy : ${widget.kisi.boy}"),
            Text("Bekar mı : ${widget.kisi.bekarMi}"),
          ],
        ),
      ),
    );
  }
}
