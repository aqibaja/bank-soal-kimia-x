import 'package:bank_kimia_x/page/Pengenalan_kimia_pem.dart';
import 'package:bank_kimia_x/screen/slider_box.dart';
import 'package:flutter/material.dart';
import 'package:bank_kimia_x/appBar.dart';

class PengenalanKimia extends StatefulWidget {
  @override
  _PengenalanKimiaState createState() => _PengenalanKimiaState();
}

class _PengenalanKimiaState extends State<PengenalanKimia> {
  //list yang akan ditampilkan perslider
  List<Widget> _pages = [];
  String kategori = "Pengenalan Kimia";

  @override
  Widget build(BuildContext context) {
    for (int i = 1; i <= 30; i++) {
      _pages.add(
        SliderBox(
          image: "assets/images/soal/ilmuKimia-$i.PNG",
        ),
      );
    }
    return Scaffold(
        //backgroundColor: Color(0xffe4fbf9),
        appBar: appBar(kategori, context),
        body: Container(
            color: /* Colors.grey[200] */ Colors.white,
            child: Box(
              type: "soal",
              pages: _pages,
              kategori: kategori,
              soal: "(Soal UN 2018/2019)",
              soalLimit: 30,
              soalLimit2: 100,
              soalLimit3: 100,
              soalLimit4: 100,
              pembahasan: PengenalanKimiaPem(),
              jawaban: [
                "B",
                "C",
                "A",
                "A",
                "B",
                "B",
                "D",
                "C",
                "A",
                "D",
                "E",
                "B",
                "B",
                "D",
                "D",
                "D",
                "A",
                "D",
                "B",
                "C",
                "A",
                "C",
                "B",
                "C",
                "C",
                "A",
                "D",
                "B",
                "E",
                "D"
              ],
            )));
  }
}
