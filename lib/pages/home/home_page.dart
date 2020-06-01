import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void validarLogin() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            "baby pink",
            style: TextStyle(color: Colors.white),
          ),
        ),
        */
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(top: 200),
              child: Center(child: Image.asset("images/babypink.png"))),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 40, 30, 15),
            child: TextFormField(
              textAlign: TextAlign.left,
              //tipo do teclado
              //text, number, emailAddress, datetime
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  //borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  borderSide: BorderSide(color: Colors.pinkAccent, width: 2),
                ),
                labelText: 'email',
                labelStyle: TextStyle(
                  fontSize: 18,
                ),
              ),
              style: TextStyle(
                fontSize: 25,
                color: Colors.pink,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 15),
            child: TextFormField(
              textAlign: TextAlign.left,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  //borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  borderSide: BorderSide(color: Colors.pinkAccent, width: 2),
                ),
                labelText: 'senha',
                labelStyle: TextStyle(
                  fontSize: 18,
                ),
              ),
              obscureText: true,
              style: TextStyle(
                fontSize: 25,
                color: Colors.pink,
              ),
            ),
          ),
        ],
      )),
      persistentFooterButtons: <Widget>[
        SizedBox(
            width: double.maxFinite,
            height: 55,
            child: RaisedButton(
              child: Text(
                'ENTRAR',
                style: TextStyle(fontSize: 20, fontFamily: "Roboto"),
              ),
              textColor: Colors.white,
              color: Colors.pink[400],
              onPressed: () {
                validarLogin();
              },
            )),
      ],
    );
  }
}
