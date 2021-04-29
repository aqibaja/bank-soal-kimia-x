import 'package:bank_kimia_x/appBar.dart';
import 'package:bank_kimia_x/page/Struktur_atom_pem.dart';
import 'package:flutter/material.dart';
import 'package:bank_kimia_x/screen/slider_box.dart';

class StrukturAtom extends StatefulWidget {
  @override
  _StrukturAtomState createState() => _StrukturAtomState();
}

class _StrukturAtomState extends State<StrukturAtom> {
  //list yang akan ditampilkan perslider
  List<Widget> _pages = [];
  String kategori = "Struktur Atom";
  @override
  Widget build(BuildContext context) {
    for (int i = 1; i <= 44; i++) {
      _pages.add(
        SliderBox(
          image: "assets/images/soal/strukturAtom-$i.PNG",
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
              kategori: kategori,
              jawaban: [
                "C",
                "C",
                "D",
                "A",
                "C",
                "A",
                "B",
                "C",
                "A",
                "C",
                "E",
                "C",
                "C",
                "E",
                "B",
                "A",
                "C",
                "C",
                "C",
                "E",
                "B",
                "D",
                "A",
                "C",
                "B",
                "A",
                "E",
                "A",
                "E",
                "A",
                "C",
                "B",
                "B",
                "E",
                "D",
                "A",
                "C",
                "B",
                "B",
                "D",
                "C",
                "A",
                "D",
                "B",
              ],
              type: "soal",
              soal: "(Soal SBMPTN 2018)",
              soalLimit: 19,
              soal2: "(Soal UN 2017/2018)",
              soalLimit2: 25,
              soalLimit3: 100,
              soalLimit4: 100,
              pembahasan: StrukturAtomPem(),
            )));
  }
}
