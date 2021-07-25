import 'package:flutter/material.dart';

import 'clip.dart';

class Inscription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: OvalBottomBorderClipper(),
              child: Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    // image: DecorationImage(
                    //     image: AssetImage("images/naruto.jpg"),
                    //     colorFilter: ColorFilter.mode(
                    //         Colors.black.withOpacity(.2), BlendMode.darken),
                    //     fit: BoxFit.cover)
                      ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Colors.white.withAlpha(200),
                          borderRadius: BorderRadius.circular(10),
                          // image: DecorationImage(
                          //     image: AssetImage("assets/images/logo.png"))
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "BIENVENU DANS SECAPP",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email ou numéro",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: Colors.white, width: 1)),
                    width: 350,
                    height: 50,
                    child: TextField(
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.lock,
                            color: Colors.blue,
                          ),
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20
                              )
                              ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Text(
                    "Mot de passe",
                    style: TextStyle(fontSize: 16),
                  ),
                   SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: Colors.white, width: 1)),
                    width: 350,
                    height: 50,
                    child: TextField(
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.person,
                            color: Colors.blue,
                          ),
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20
                              )
                              ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Text(
                    " conf. Mot de passe",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: Colors.white, width: 1)),
                    width: 350,
                    height: 50,
                    child: TextField(
                      textAlign: TextAlign.start,
                      obscureText: true,
                      decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.lock,
                            color: Colors.blue,
                          ),
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20)),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'ListeChantier');
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 50),
                width: MediaQuery.of(context).size.width - 100,
                height: 56,
                decoration: BoxDecoration(
                    color: Colors.white,
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.lightBlue,
                          Colors.lightBlue
                        ]),
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "S'inscrire",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                   
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1
                    )
                  ),
                ),
                SizedBox(width: 2,),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'Loging');
                  },
                  child: Text(
                        "J'ai deja un compte",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                ),
              ],
            ),
             SizedBox(height: 35),
          ],
        ),
      ),
    );
  }
}
