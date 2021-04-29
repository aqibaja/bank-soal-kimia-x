import 'package:bank_kimia_x/screen/slider_box.dart';
import 'package:flutter/material.dart';

import 'package:bank_kimia_x/appBar.dart';

class StrukturAtomPem extends StatefulWidget {
  @override
  _StrukturAtomPemState createState() => _StrukturAtomPemState();
}

class _StrukturAtomPemState extends State<StrukturAtomPem> {
  //list yang akan ditampilkan perslider
  List<Widget> _pages = [];
  String kategori = "Struktur Atom";
  @override
  Widget build(BuildContext context) {
    for (int i = 1; i <= 44; i++) {
      _pages.add(
        SliderBox(
          image: "assets/images/pembahasan/strukturAtom-$i.PNG",
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
              kategori: kategori,
              pages: _pages,
              soal: "(Soal SBMPTN 2018)",
              soalLimit: 19,
              soal2: "(Soal Soal UN 2017/2018)",
              soalLimit2: 25,
              soalLimit3: 100,
              soalLimit4: 100,
            )));
  }
}
