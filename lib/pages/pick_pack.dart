import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:octopus_waste_catalog/main.dart';
import 'package:octopus_waste_catalog/model/waste_category.dart';
import 'package:octopus_waste_catalog/pages/pick_pack_detail.dart';
import 'package:octopus_waste_catalog/themes.dart';


class PickPack extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints){
        if(constraints.maxWidth > 800){
          return PickPackMobile();
        }
        else{
          return PickPackMobile();
        }
      }
    );
  }
}


class PickPackMobile extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView.builder(
              itemCount: wasteCategoryList.length,
              itemBuilder: (context, index){
                final WasteCategory waste = wasteCategoryList[index];
                return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return PickPackDetail(waste: waste);
                    }));
                  },
                  child: Align(
                    alignment: Alignment.center,
                    child:Container(
                      color: whiteColor,
                      height: 150,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          //Layout Gambar Waste
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 110,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      width: 68,
                                      height: 68,
                                      decoration: BoxDecoration(
                                        color: greyBackground,
                                        borderRadius: BorderRadius.all(Radius.circular(7)),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child:  Container(
                                      width: 65,
                                      height: 105,
                                      child: Image.asset(waste.imagePath),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          //Layout Nama Waste
                          Expanded(
                            flex: 2,
                            child: Container(
                              margin: EdgeInsets.only(left:10, right: 5),
                              color: whiteColor,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height:20),
                                    Text(waste.plasticName,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      child: Text(waste.description,
                                        style: TextStyle(
                                          height: 1.2,
                                          fontSize: 8,
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),

                                    ),
                                    SizedBox(height: 7),
                                    Container(
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Container(
                                              width: 85,
                                              height: 22,
                                              decoration: BoxDecoration(
                                                color: blueLight,
                                                borderRadius: BorderRadius.all(Radius.circular(7)),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Padding(
                                              padding: const EdgeInsets.only(top: 3, left: 3),
                                              child: CircleAvatar(
                                                backgroundColor: bluePrimary,
                                                radius: 8,
                                                child: Container(
                                                  child: Image.asset('images/coins_home.png', color: whiteColor,),
                                                  width: 10,
                                                  height: 10,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Padding(
                                              padding: const EdgeInsets.only(top: 3, left: 23),
                                              child: Text(waste.price,
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  color: bluePrimary,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]
                              ),
                            ),
                          ),

                          //Layout Plastic Code
                          Expanded(
                            flex: 1,
                            child: Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Container(
                                  width: 48,
                                  height: 48,
                                  child: Image.asset(waste.plasticCode),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }
          ),
        ),
      ),
    );
  }
}