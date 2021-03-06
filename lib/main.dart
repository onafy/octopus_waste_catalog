import 'package:flutter/material.dart';
import 'package:octopus_waste_catalog/pages/pick_pack.dart';
import 'package:animated_button/animated_button.dart';
import 'package:octopus_waste_catalog/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
    );
  }
}



class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left:10, top:10),
                child: Image.asset('images/octopus_logo.png', width:100,),
              ),
              SizedBox(height: 5),

              //Pick pack layout
              Container(
                  height: 180,
                  margin: EdgeInsets.all(10),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9),
                    ),
                    elevation: 7,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Pick and Pack',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          color: Color(0xff3f97e1)),),
                                      SizedBox(height: 4),
                                      Container(
                                        width: 200,
                                        child: Text('Ayo bersihkan tempat sampah kita!',
                                            style: TextStyle(
                                              height: 1.3,
                                            ),
                                            maxLines: 2,),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(right: 15),
                                  child: Container(
                                    child: Image.asset('images/pick-and-pack-icn.png'),
                                    height: 60,
                                    width: 60,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.only(top: 8),
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context){
                                    return PickPack();
                                  }));
                                },
                                child: Text('LIHAT KATALOG',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: bluePrimary,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              SizedBox(height: 15),

              //cash and point layout
              Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      //Cash Layout
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 120,
                          child: Card(
                            elevation: 7,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            color: bluePrimary,
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    //Cash first row
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: whiteColor,
                                          radius: 13,
                                          child: Container(
                                            child: Image.asset('images/coins_home.png'),
                                            width: 16,
                                            height: 16,
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Text('Cash',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: whiteColor,
                                              fontSize: 12,
                                            )),
                                        SizedBox(width: 55),
                                        Icon(Icons.arrow_forward_ios,
                                          size:20,
                                          color: whiteColor,)
                                      ],
                                    ),
                                  ),
                                  //Cash second row
                                  Expanded(
                                    flex: 2,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text('10.415',
                                            style: TextStyle(
                                              color: whiteColor,
                                              fontSize: 20,
                                            )),
                                        SizedBox(width: 6),
                                        Text('rupiah',
                                          style: TextStyle(
                                              color: whiteColor,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      //DTBM Layout
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 120,
                          child: Card(
                            elevation: 7,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            color: bluePrimary,
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    //DTBM first row
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: whiteColor,
                                          radius: 13,
                                          child: Container(
                                            child: Image.asset('images/coins_home.png'),
                                            width: 16,
                                            height: 16,
                                        ),
                                       ),
                                        SizedBox(width: 10),
                                        Text('Poin',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: whiteColor,
                                              fontSize: 12,
                                            )),
                                        SizedBox(width: 55),
                                        Icon(Icons.arrow_forward_ios, size:20,
                                          color: whiteColor,)
                                      ],
                                    ),
                                  ),
                                  //DTBM second row
                                  Expanded(
                                    flex: 2,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text('66.315',
                                            style: TextStyle(
                                              color: whiteColor,
                                              fontSize: 20,
                                            )),
                                        SizedBox(width: 6),
                                        Text('dtbm',
                                          style: TextStyle(
                                              color: whiteColor,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
