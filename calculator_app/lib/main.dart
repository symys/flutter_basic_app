import 'package:flutter/material.dart';

void main() {
  runApp(MyCalculator());
}

class MyCalculator extends StatelessWidget {
  const MyCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(250, 80, 50, 100),
          centerTitle: true,
          title: Text(
            'Let\'s calculate, give me the numbers !',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: MainScreen(),
      ),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  num number1 = 0;
  num number2 = 0;
  num result = 0;

  numberSum() {
    setState(() {
      number1 = num.parse(t1.text);
      number2 = num.parse(t2.text);
      result = number1 + number2;
    });
  }

  numberMinus() {
    setState(() {
      number1 = num.parse(t1.text);
      number2 = num.parse(t2.text);
      result = number1 - number2;
    });
  }

  numberMultiply() {
    setState(() {
      number1 = num.parse(t1.text);
      number2 = num.parse(t2.text);
      result = number1 * number2;
    });
  }

  numberDivided() {
    setState(() {
      number1 = num.parse(t1.text);
      number2 = num.parse(t2.text);
      result = number1 / number2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/kareli.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              result.toString(),
              style: TextStyle(
                  color: Colors.black, fontSize: 45, letterSpacing: 2),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 250,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(255, 255, 255, 50),
                  hintText: 'the first number here, please...',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(25.7),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(25.7),
                  ),
                ),
                controller: t1,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 250,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(255, 255, 255, 50),
                  hintText: 'the second number here, please...',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(25.7),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(25.7),
                  ),
                ),
                controller: t2,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.black),
                        onPressed: numberSum,
                        child: Text("+", style: TextStyle(fontSize: 20),))),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.black),
                        onPressed: numberMinus,
                        child: Text("-", style: TextStyle(fontSize: 30),))),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.black),
                        onPressed: numberMultiply,
                        child: Text("X"))),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.black
                        ),
                        onPressed: numberDivided, child: Text("/", style: TextStyle(fontSize: 20),))),
                SizedBox(
                  width: 10,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
