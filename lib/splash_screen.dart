import 'package:bank_kimia_x/screen/continue_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.blueAccent[50],
      alignment: Alignment.center,
      child: SafeArea(
        child: Stack(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(bottom: 450),
              alignment: Alignment.center,
              child: Text(
                "APLIKASI ANDROID",
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 75),
              alignment: Alignment.center,
              child: Image(
                image: AssetImage("assets/images/logo.png"),
                height: MediaQuery.of(context).size.height / 1.2,
                width: MediaQuery.of(context).size.width / 1.2,
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: 375),
                alignment: Alignment.center,
                child: Text(
                  "BANK SOAL\nKIMIA KELAS X",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            BlinkButton(),
          ],
        ),
      ),
    ));
  }
}

//blink method for button
class BlinkButton extends StatefulWidget {
  @override
  _BlinkButtonState createState() => _BlinkButtonState();
}

class _BlinkButtonState extends State<BlinkButton>
    with SingleTickerProviderStateMixin {
  // manage the time animation
  AnimationController _animationController; // manage animation

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1500));
    _animationController.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (BuildContext context) => ContinueScreen()));
        },
        child: FadeTransition(
            opacity: _animationController,
            child: Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 1.35),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(81, 191, 166, 1),
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                  child: Text(
                "AYO MULAI",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              )),
              height: 55,
              width: 135,
            )),
      ),
    );
  }
}
