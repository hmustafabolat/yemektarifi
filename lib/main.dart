import 'package:flutter/material.dart';
import 'package:yemektarifi/textWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("Yemek Tarifi"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(ekranGenisligi/65),
              child: SizedBox(
                width: ekranGenisligi / 1,
                child: Image.asset(
                  "images/yemek1.jpeg",

                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(ekranGenisligi/65),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: SizedBox(
                      width: ekranGenisligi / 2,
                      child: TextButton(
                        onPressed: () {
                          print("Beğenildi");
                        },
                        child: Yazi(
                          icerik: "Beğen",
                          yaziBoyutu: ekranGenisligi / 28,
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.orange,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: ekranGenisligi/25,),
                  Expanded(
                    child: SizedBox(
                      width: ekranGenisligi / 2,
                      child: TextButton(
                        onPressed: () {
                          print("Yorum Yapıldı");
                        },
                        child: Yazi(
                            icerik: "Yorum Yap", yaziBoyutu: ekranGenisligi / 28),
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.deepOrange),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(ekranYuksekligi / 70),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Eli Böğründe(Yan Yana)",
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.bold,
                      fontSize: ekranGenisligi / 20,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: ekranYuksekligi / 50),
                    child: Row(
                      children: [
                        Yazi(
                          icerik: "Fırında pişirmek için uygun",
                          yaziBoyutu: ekranGenisligi / 25,
                        ),
                        Spacer(),
                        Yazi(icerik: "7 Şubat", yaziBoyutu: ekranGenisligi / 25),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: ekranYuksekligi / 50),
                    child: Yazi(
                      icerik: "Öncelikle etleri kuş başı olarak doğrayalım."
                          "Biberleri orta büyüklükte doğrayalım, normal domates"
                          "kullanacaksak orta büyüklükte doğrayalım."
                          "Önce etleri sonra sebzeleri yan yana sıralı tepsiye yerleştirelim"
                          "Orta kısmına sarımsağı yerleştirelim, parçalay"
                          "ıp üzerinede serpiştirebiliriz."
                          "Üzerine sıvı yağ ve baharatları çırpalım ."
                          "Sebze ve etlerin üzerine eşit dökelim."
                          "20 gram kadar kuyruk yağı kullanabiliriz."
                          "Üzerini ıslatılmış yağlı kağıt ve folyoyla saralım."
                          "190 derece fırında ortalama 1 saat 1. 5 saat arası pişmeye bırakal"
                          "ım.",
                      yaziBoyutu: ekranGenisligi / 30,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
