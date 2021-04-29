import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double score;
  final int benar;
  final int salah;
  final String kategori;
  final Widget pembahasan;
  ResultScreen(
      {this.score, this.benar, this.salah, this.kategori, this.pembahasan});
  @override
  Widget build(BuildContext context) {
    print(pembahasan.toString());
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ClipPath(
              clipper: TitleClip(
                center: 30,
              ),
              child: Container(
                width: 210,
                height: 60,
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(
                      color: Colors.black,
                    )),
                child: Center(
                  child: Text(
                    "Rincian",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            ClipPath(
              clipper: TitleClip(center: 25),
              child: Container(
                width: 190,
                height: 50,
                margin: EdgeInsets.only(top: 25, left: 8),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(81, 191, 166, 1),
                    border: Border.all(
                      color: Colors.black,
                    )),
                child: Center(
                  child: Text(
                    "Rincian",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.blueGrey, width: 5),
                      color: Color.fromRGBO(81, 191, 166, 1),
                    ),
                    child: Center(
                      child: Text(
                        "KETEGORI",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ClipPath(
                    clipper: MyCustomClipper(),
                    child: Container(
                      width: 300,
                      color: Color.fromRGBO(81, 191, 166, 1),
                      child: Container(
                        width: 300,
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Center(
                            child: Text(
                              kategori,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 35, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(81, 191, 166, 1),
                            ),
                            child: Center(
                              child: Text(
                                "BENAR",
                                style: TextStyle(
                                    fontSize: 35, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(81, 191, 166, 1),
                            ),
                            child: Center(
                              child: Text(
                                "SALAH",
                                style: TextStyle(
                                    fontSize: 35, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromRGBO(81, 191, 166, 1),
                                    width: 3)),
                            child: Center(
                              child: Text(
                                benar.toString(),
                                style: TextStyle(
                                    fontSize: 35, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromRGBO(81, 191, 166, 1),
                                    width: 3)),
                            child: Center(
                              child: Text(
                                salah.toString(),
                                style: TextStyle(
                                    fontSize: 35, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 75,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.blueGrey, width: 5),
                          color: Color.fromRGBO(81, 191, 166, 1),
                        ),
                        child: Center(
                          child: Text(
                            "SCORE",
                            style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ClipPath(
                        clipper: ScoreClipper(),
                        child: Container(
                          width: 200,
                          color: Color.fromRGBO(81, 191, 166, 1),
                          child: Container(
                            width: 200,
                            child: Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: Center(
                                child: Text(
                                  score.toStringAsFixed(2),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.red,
                        ),
                        child: Center(
                          child: Text(
                            "Kembali",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (_) => pembahasan)),
                      child: Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.green,
                        ),
                        child: Center(
                          child: Text(
                            "Pembahasan",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
            /* Center(
              child: Container(
                child: Text(score.toStringAsFixed(2)),
              ),
            ), */
          ],
        ),
      ),
    );
  }
}

class TitleClip extends CustomClipper<Path> {
  int center;
  TitleClip({this.center});
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 0);
    path.lineTo(size.width - size.width / 3, 0);
    path.lineTo(size.width, size.height - center);
    path.lineTo(size.width - size.width / 5, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class ScoreClipper extends CustomClipper<Path> {
  double triangleHeight = 30.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0.0, size.height / 2);
    path.lineTo(triangleHeight, size.height);
    path.lineTo(size.width - triangleHeight, size.height);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width - triangleHeight, 0.0);
    path.lineTo(triangleHeight, 0.0);
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
