import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:w_security/screens/ListeRapport.dart';
import 'package:w_security/screens/add_visiteurs_screen.dart';
import 'package:w_security/utils/my_colors.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              // height: MediaQuery.of(context).size.height / 4,
              color: MyColors.primary,

              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Bonjour',
                              style: TextStyle(
                                fontFamily: 'CenturyGothic',
                                color: MyColors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.bold
                              ),
                            ),

                            Text(
                              'Agent Marc',
                              style: TextStyle(
                                fontFamily: 'CenturyGothic',
                                color: MyColors.white,
                                fontSize: 21,
                                letterSpacing: 1.2
                              ),
                            )
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: (){
                                Navigator.of(context).pushNamed("profile");
                              },
                              child: CircleAvatar(
                                backgroundColor: MyColors.white,
                                radius: 22,
                                child: CircleAvatar(
                                  backgroundColor: MyColors.primary,
                                  radius: 21,
                                  child: Icon(
                                    Icons.person_outline,
                                    size: 28,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),

                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 19
                    ),

                    decoration: BoxDecoration(
                    color: MyColors.bodyColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5)
                      )
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Auj, 14 juin 2021",
                              style: TextStyle(
                                fontFamily: 'CenturyGothic',
                                color: MyColors.primary,
                                decoration: TextDecoration.underline
                              ),
                            ),
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15.0,
                                vertical: 8.0
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    'Visiteurs',
                                    style: TextStyle(
                                      fontFamily: 'CenturyGothic',
                                      color: MyColors.primary,
                                      fontSize: 15
                                    ),
                                  ),

                                  Text(
                                    '13',
                                    style: TextStyle(
                                      fontFamily: 'CenturyGothic',
                                      color: MyColors.primary,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14
                                    ),
                                  )
                                ],
                              ),
                            ),

                            Text(
                              "|",
                              style: TextStyle(
                                color: MyColors.primary,
                                fontSize: 24
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15.0,
                                vertical: 8.0
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    'Incidents',
                                    style: TextStyle(
                                      fontFamily: 'CenturyGothic',
                                      color: MyColors.primary,
                                      fontSize: 15
                                    ),
                                  ),

                                  Text(
                                    '0',
                                    style: TextStyle(
                                      fontFamily: 'CenturyGothic',
                                      color: MyColors.primary,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14
                                    ),
                                  )
                                ],
                              ),
                            ),


                            Text(
                              "|",
                              style: TextStyle(
                                color: MyColors.primary,
                                fontSize: 24
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15.0,
                                vertical: 8.0
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    'Rapports',
                                    style: TextStyle(
                                      fontFamily: 'CenturyGothic',
                                      color: MyColors.primary,
                                      fontSize: 15
                                    ),
                                  ),

                                  Text(
                                    '2',
                                    style: TextStyle(
                                      fontFamily: 'CenturyGothic',
                                      color: MyColors.primary,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),


            Expanded(
              child: Container(
                color: MyColors.bodyColor,
               
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 25
                  ),
                  child: GridView(
                    physics: BouncingScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 5.0,
                      crossAxisSpacing: 5.0,
                      childAspectRatio: 4.5/4
                    ),
                    children: [
                      
                      buildCard(MyColors.primary, Icons.group, "Visiteurs"),
                      buildCard(Colors.red, Icons.group, "Rapport"),
                      buildCard(Colors.orange, Icons.home,"Incidents"),
                      buildCard(Colors.green, Icons.check_box_rounded, "Check points"),

                    ],
                  )
                ),
              ),
            
            )
          ],
        ),
      ),
    );
  }

  GestureDetector buildCard(Color color, IconData icon, String title) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context, 
          CupertinoPageRoute(
            builder: (BuildContext context) => AddVisiteursScreen()
          )
        );
      },
      child: Card(
        
        elevation: 5,
        shadowColor: MyColors.primary.withOpacity(0.2),
        color: color.withOpacity(0.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 2,
            vertical: 0.0
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 40,
                color: Colors.black,
              ),

              SizedBox(height: 5,),

              Text(
                '$title',
                style: TextStyle(
                  fontFamily: 'CenturyGothic',
                  fontSize: 13,
                  color: Colors.black
                ),
              ),

              SizedBox(height: 6,),

              // Text(
              //   '692 120 F',
              //   style: TextStyle(
              //     fontFamily: 'FuturaPT',
              //     fontSize: 15,
              //     color: Colors.blue.withOpacity(0.6)
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}