import 'package:flutter/material.dart';
import 'package:w_security/screens/ListeRapport.dart';
import 'package:w_security/utils/my_colors.dart';

class AddVisiteursScreen extends StatefulWidget {
  AddVisiteursScreen({Key? key}) : super(key: key);

  @override
  _AddVisiteursScreenState createState() => _AddVisiteursScreenState();
}

class _AddVisiteursScreenState extends State<AddVisiteursScreen> {
  String _civilite = 'Civilite';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         elevation: 0,
         actions: [
           IconButton(
             onPressed: () {
               Navigator.push(
                 context, 
                 MaterialPageRoute(
                   builder: (BuildContext context) => ListeRapport()
                  )
                );
             },
             icon : Icon(
               Icons.list,
                size: 30,
              )
           )
         ],
       ),

       body: Column(
         children: [
            Container(
              // height: 80,
              color: MyColors.primary,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 22.0
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.group_add,
                      size: 35,
                      color: MyColors.white,
                    ),
                    Text(
                      ' Nouveau Visiteur',
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
              child: ListView(
                children: [

                  SizedBox(height: 20,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.0001),
                        boxShadow: [
                          BoxShadow(color: Colors.white, spreadRadius: 1),
                        ],
                        border: Border.all(color: Color(0xffE4E4E4)),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: DropdownButton(
                              iconSize: 40,
                              value: _civilite,
                              underline: DropdownButtonHideUnderline(child: Text("")),
                              isExpanded: true,
                                // hint: Text("Select", style: TextStyle(fontSize: 15.0)),
                              iconEnabledColor: Color(0xff5662FE),
                              
                              items: ['Civilite', 'Mme', 'M'].map((dropDrowValue) {
                                return DropdownMenuItem<String>(
                                  value: dropDrowValue,
                                  child: Text(dropDrowValue),
                                );
                              }).toList(),
                              onChanged: (val) {
                                setState(() {
                                  _civilite = val.toString();
                                });
                              }
                          ),
                        )
                  ),

                  SizedBox(height: 20,),

                  Container(
                    padding: EdgeInsets.only(left: 5.0, right: 0),
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    height: 50,
                    alignment: Alignment.center,

                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Color(0xffE4E4E4), spreadRadius: 1)
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: ' Nom & Prenoms',
                        hintStyle: TextStyle(
                          fontSize: 16.2
                        )
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),

                  Container(
                    padding: EdgeInsets.only(left: 5.0, right: 0),
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    height: 50,
                    alignment: Alignment.center,

                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Color(0xffE4E4E4), spreadRadius: 1)
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: ' Contact',
                        hintStyle: TextStyle(
                          fontSize: 16.2
                        )
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),

                  Container(
              padding: EdgeInsets.only(left: 5.0, right: 0),
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              // height: 50,
              alignment: Alignment.center,

              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Color(0xffE4E4E4), spreadRadius: 1)
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: TextFormField(
                minLines: 4,
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Objet de la visite'
                ),
              ),
            ),

                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                    width: MediaQuery.of(context).size.width,
                    height: 50,
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
                      "Ajouter",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            )
         ],
       ),
    );
  }
}