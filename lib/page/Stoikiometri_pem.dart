import 'package:bank_kimia_x/screen/slider_box.dart';
import 'package:flutter/material.dart';
import 'package:bank_kimia_x/appBar.dart';

class StoikiometriPem extends StatefulWidget {
  @override
  _StoikiometriPemState createState() => _StoikiometriPemState();
}

class _StoikiometriPemState extends State<StoikiometriPem> {
  //list yang akan ditampilkan perslider
  List<Widget> _pages = [];
  String kategori = "Stoikiometri";
  @override
  Widget build(BuildContext context) {
    for (int i = 1; i <= 50; i++) {
      _pages.add(
        SliderBox(
          image: "assets/images/pembahasan/stoikiometriPem-$i.png",
        ),
      );
    }
    return Scaffold(
        backgroundColor: Color(0xffe4fbf9),
        appBar: appBar(kategori, context),
        body: Container(
            color: /* Colors.grey[200] */ Colors.white,
            child: Box(
              type: "jawaban",
              pages: _pages,
              soal: "(Soal Ruang Guru)",
              soalLimit: 50,
              soalLimit2: 100,
              soalLimit3: 100,
              soalLimit4: 100,
              kategori: kategori,
            )));
  }
}
