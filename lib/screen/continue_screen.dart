import 'package:bank_kimia_x/page/Pengenalan_kimia.dart';
import 'package:bank_kimia_x/page/Pengenalan_kimia_pem.dart';
import 'package:bank_kimia_x/page/Stoikiometri.dart';
import 'package:bank_kimia_x/page/Stoikiometri_pem.dart';
import 'package:bank_kimia_x/page/Larutan_Elektrolit_Redoks.dart';
import 'package:bank_kimia_x/page/Larutan_Elektrolit_Redoks_pem.dart';
import 'package:bank_kimia_x/page/Ikatan_Kimia.dart';
import 'package:bank_kimia_x/page/Ikatan_Kimia_pem.dart';
import 'package:bank_kimia_x/page/Sitem_Periodik_Unsur.dart';
import 'package:bank_kimia_x/page/Sitem_Periodik_Unsur_pem.dart';
import 'package:bank_kimia_x/page/Struktur_atom.dart';
import 'package:bank_kimia_x/page/Struktur_atom_pem.dart';
import 'package:flutter/material.dart';

class ContinueScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(234, 252, 252, 1),
        body: SafeArea(
          child: Stack(
            children: [
              ClipPath(
                clipper: TitleClip(center: 30),
                child: Container(
                  width: 210,
                  height: 60,
                  margin: EdgeInsets.only(top: 45),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(
                        color: Colors.black,
                      )),
                  child: Center(
                    child: Text(
                      "Kategori",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              ClipPath(
                clipper: TitleClip(center: 25),
                child: Container(
                  width: 190,
                  height: 50,
                  margin: EdgeInsets.only(top: 50, left: 8),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(81, 191, 166, 1),
                      border: Border.all(
                        color: Colors.black,
                      )),
                  child: Center(
                    child: Text(
                      "Kategori",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 115),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        menu("Pengenalan Kimia", context, PengenalanKimia(),
                            100),
                        menu("Struktur Atom", context, StrukturAtom(), 100),
                        menu("Sitem Periodik Unsur", context,
                            SistemPeriodikUnsur(), 100),
                        menu("Ikatan Kimia", context, IkatanKimia(), 100),
                        menu("Larutan Elektolit dan Konsep Redoks", context,
                            LarutanElektrolitRedoks(), null),
                        menu("Stoikiometri", context, Stoikiometri(), 100),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

Widget menu(String menu, BuildContext context, Widget route, double height) {
  return GestureDetector(
    onTap: () =>
        Navigator.push(context, MaterialPageRoute(builder: (context) => route)),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipPath(
        clipper: MyCustomClipper(),
        child: Container(
          width: 300,
          color: Color.fromRGBO(81, 191, 166, 1),
          child: Container(
            width: 300,
            height: height,
            /*  decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 5)), */
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  menu,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ),
      ),

      /* Container(
        width: 300,
        decoration:
            BoxDecoration(border: Border.all(color: Colors.black, width: 5)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            menu,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
          ),
        ),
      ), */
    ),
  );
}

class ContinueScreen2 extends StatelessWidget {
  final Widget soal;
  final Widget pembahasan;
  ContinueScreen2({this.soal, this.pembahasan});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffe4fbf9),
        body: SafeArea(
          child: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  menu("SOAL", context, soal, null),
                  menu("PEMBAHASAN", context, pembahasan, null),
                ],
              ),
            ),
          ),
        ));
  }
}

class TitleClip extends CustomClipper<Path> {
  int center;
  TitleClip({this.center});
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 0);
    path.lineTo(size.width - 75, 0);
    path.lineTo(size.width, size.height - center);
    path.lineTo(size.width - 25, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height - size.height / 4.5);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, size.height - size.height / 4.5);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
