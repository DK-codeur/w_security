
import 'package:flutter/material.dart';
import 'package:w_security/screens/home_screen.dart';
import 'package:w_security/utils/my_colors.dart';


import 'clip.dart';

class Login extends StatelessWidget {
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
                    color: MyColors.primary,
                    // image: DecorationImage(
                    //     image: AssetImage("assets/images/ma.jpg"),
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
                          borderRadius: BorderRadius.circular(100),
                          // image: DecorationImage(
                          //     image: AssetImage("images/naruto.jpg"), fit: BoxFit.cover)
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "W SECURITY",
                      style: TextStyle(
                        fontFamily: 'CenturyGothic',
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 24),
                    ),

                    SizedBox(height: 10,),

                    Text(
                      "Connexion",
                      style: TextStyle(
                        fontFamily: 'CenturyGothic',
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 12),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 35),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Email ou numéro",
                  style: TextStyle(fontFamily: 'CenturyGothic',fontSize: 16),
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
                          color: Colors.blueAccent,
                        ),
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 20)),
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
                    obscureText: true,
                    decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.lock,
                          color: Colors.blueAccent,
                        ),
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 20)),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (BuildContext context) => HomeScreen()
                      )
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 50),
                    width: MediaQuery.of(context).size.width -100,
                    height: 56,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              MyColors.primary,
                              MyColors.primary
                            ]),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "Connexion",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
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
