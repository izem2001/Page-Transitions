import 'package:flutter/material.dart';
import 'package:sayfa_gecis_uygulamasi/main.dart';

class SayfaB extends StatefulWidget {
  const SayfaB({super.key});

  @override
  State<SayfaB> createState() => _SayfaBState();
}

class _SayfaBState extends State<SayfaB> {

  Future<bool> geriDonusTusu(BuildContext context) async {
    print("Geri tuşu tıklandı.");
    return true;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("SayfaB"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            print("AppBar geri dönüş tuşu kodlandı.");
            Navigator.push(context, MaterialPageRoute(builder: (context) => Anasayfa()));
          },
        ),
      ),
      body: WillPopScope(
        onWillPop: () => geriDonusTusu(context),
        child: Center(
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
      ),
    );
  }
}
