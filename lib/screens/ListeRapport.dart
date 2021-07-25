import 'package:flutter/material.dart';
import 'package:w_security/utils/my_colors.dart';

class ListeRapport extends StatefulWidget {
  ListeRapport({Key? key}) : super(key: key);

  @override
  _ListeRapportState createState() => _ListeRapportState();
}

class _ListeRapportState extends State<ListeRapport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         elevation: 0,
         actions: [
           IconButton(
             onPressed: () {},
             icon : Icon(
               Icons.search,
                size: 30,
              )
           )
         ],
       ),

       body: Column(
         children: [
            Container(
              color: MyColors.primary,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 22.0
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.list_alt_outlined,
                      size: 35,
                      color: MyColors.white,
                    ),
                    Text(
                      'Liste Des Rapports',
                      style: TextStyle(
                        fontFamily: 'CenturyGothic',
                        color: MyColors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (index, context){
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                elevation: 3,
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.person,
                                              size: 15,
                                            ),
                                            SizedBox(width: 5,),
                                            Text(
                                              'Kone Maha',
                                              style: TextStyle(
                                                fontFamily: 'CenturyGothic',
                                                fontWeight: FontWeight.bold
                                              ),
                                            )
                                          ],
                                        ),

                                        Row(
                                          children: [
                                            Icon(
                                              Icons.phone,
                                              size: 15,
                                            ),

                                            SizedBox(width: 5,),

                                            Text(
                                              '07 927 927 07',
                                              style: TextStyle(
                                                fontFamily: 'CenturyGothic',
                                                // fontWeight: FontWeight.bold
                                              ),
                                            )
                                          ],
                                        ),

                                        Row(
                                          children: [
                                            Icon(
                                              Icons.date_range,
                                              size: 15,
                                            ),
                                              SizedBox(width: 5,),
                                            Text(
                                              '24/05/2021',
                                              style: TextStyle(
                                                fontFamily: 'CenturyGothic',
                                                // fontWeight: FontWeight.bold
                                              ),
                                            )
                                          ],
                                        ),

                                        SizedBox(height: 10,),

                                        Container(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Entretien au 24e etage avec le PDG de IBM",
                                            style: TextStyle(
                                              fontFamily: 'CenturyGothic',
                                              color: Colors.grey
                                              
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                 
                                ),
                              ),
                            );
                      }),
                    ),
                  )
                ],
              ),
            )
         ],
       ),
    );
  }
}