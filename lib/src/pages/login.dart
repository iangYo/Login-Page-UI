import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(0),
        children: <Widget>[
          // image
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                height: media.size.height / 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(160),
                    bottomRight: Radius.circular(0),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromRGBO(16, 127, 201, 1),
                      Color.fromRGBO(85, 174, 234, 1),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 500,
                height: 400,
                child: Image.asset('assets/images/consultorio.png'),
              ),
            ],
          ),

          // login
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Container(
              width: media.size.width / 1.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 22,
                  ),

                  Text(
                    "Login",
                    style: TextStyle(
                      color: Color.fromRGBO(16, 127, 201, 1),
                      fontSize: 42.50,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  SizedBox(
                    height: 32,
                  ),

                  // input
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Color.fromRGBO(172, 172, 172, 1),
                        ),
                      ),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Email",
                        hintStyle: TextStyle(
                            color: Color.fromRGBO(172, 172, 172, 1),
                            fontSize: 21.25,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 24,
                  ),

                  // button
                  ButtonTheme(
                    minWidth: 400,
                    buttonColor: Color.fromRGBO(252, 122, 81, 1),
                    child: RaisedButton(
                      elevation: 0,
                      highlightElevation: 0,
                      onPressed: () {},
                      padding: EdgeInsets.symmetric(vertical: 22),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        'Continuar',
                        style: TextStyle(
                          color: Color.fromRGBO(240, 240, 240, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 48,
                  ),

                  //create account
                  Center(
                    child: Text.rich(
                      TextSpan(
                        text: 'Novo aqui?',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(112, 112, 112, 1),
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' Crie uma conta',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(105, 105, 105, 1),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
