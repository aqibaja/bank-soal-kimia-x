import 'package:bank_kimia_x/page/Stoikiometri_pem.dart';
import 'package:bank_kimia_x/screen/slider_box.dart';
import 'package:flutter/material.dart';

import 'package:bank_kimia_x/appBar.dart';

class Stoikiometri extends StatefulWidget {
  @override
  _StoikiometriState createState() => _StoikiometriState();
}

class _StoikiometriState extends State<Stoikiometri> {
  //list yang akan ditampilkan perslider
  List<Widget> _pages = [];
  String kategori = "Stoikiometri";
  @override
  Widget build(BuildContext context) {
    for (int i = 1; i <= 50; i++) {
      _pages.add(
        SliderBox(
          image: "assets/images/soal/stoikiometri-$i.PNG",
        ),
      );
    }
    return Scaffold(
        //backgroundColor: Color(0xffe4fbf9),
        appBar: appBar(kategori, context),
        body: Container(
            color: /* Colors.grey[200] */ Colors.white,
            child: Box(
              pages: _pages,
              type: "soal",
              soal: "(Soal Ruang Guru)",
              soalLimit: 50,
              soalLimit2: 100,
              soalLimit3: 100,
              soalLimit4: 100,
              kategori: kategori,
              pembahasan: StoikiometriPem(),
              jawaban: [
                "B",
                "D",
                "E",
                "D",
                "A",
                "C",
                "B",
                "B",
                "E",
                "D",
                "D",
                "C",
                "C",
                "B",
                "E",
                "D",
                "A",
                "E",
                "B",
                "A",
                "D",
                "D",
                "A",
                "A",
                "B",
                "A",
                "D",
                "A",
                "C",
                "A",
                "D",
                "A",
                "A",
                "B",
                "E",
                "C",
                "D",
                "E",
                "B",
                "C",
                "E",
                "C",
                "A",
                "C",
                "A",
                "A",
                "A",
                "C",
                "A",
                "D"
              ],
            )));
  }
}
