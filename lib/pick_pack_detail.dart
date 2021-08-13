import 'package:flutter/material.dart';
import 'package:octopus_waste_catalog/main.dart';
import 'package:octopus_waste_catalog/model/waste_category.dart';


class PickPackDetail extends StatelessWidget{
  final WasteCategory waste;

  PickPackDetail({required this.waste});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints){
          if(constraints.maxWidth > 800){
            return PickPackDetailMobile(waste: waste);
          }
          else{
            return PickPackDetailMobile(waste: waste);
          }
        }
    );
  }
}


class PickPackDetailMobile extends StatelessWidget{
  final WasteCategory waste;
  PickPackDetailMobile({required this.waste});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                //Back Button
                Container(
                  height: 350,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/dummy_backdrop.png'),
                      fit: BoxFit.cover,
                    ),

                  ),
                ),

                //Nama dan Gambar Waste
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left:30, top:20),
                    child: Container(
                        width: 30,
                        height: 35,
                        child: CircleAvatar(
                          backgroundColor: Color(0x65FFFFFF),
                          child: IconButton(
                            icon: Icon(Icons.arrow_back_ios,
                                color: Colors.black,
                                size: 20),
                            onPressed: (){
                              Navigator.pop(context);
                            },),
                        )
                    ),
                  ),
                ),

                //Isi Konten
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: 550,
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 35, right: 35,top: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //plastic code
                        CircleAvatar(
                          backgroundColor: Color(0xFFDBDBDB),
                          radius: 25,
                          child: Container(
                            child: Image.asset(waste.plasticCode),
                            width: 40,
                            height: 40,
                          ),
                        ),
                        SizedBox(height: 40),

                        //jumlah item
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Jumlah Item',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 13,
                                    fontWeight: FontWeight.bold,
                            ),),
                            InputButton(),
                          ],
                        ),
                        SizedBox(height: 30),
                        Text('Deskripsi',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),),
                        SizedBox(height:5),
                        Text(waste.description,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 11,),
                        ),
                        SizedBox(height: 30),
                        Text('Example',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(40),
                        topRight: const Radius.circular(40),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(top:80),
                    height: 270,
                    //color: Colors.grey,
                    child: Padding(
                      padding: const EdgeInsets.only(left:35, top: 35, right: 35),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex:1,
                            child: Container(
                              margin: EdgeInsets.only(bottom: 40, right: 20),
                              child: Text(waste.plasticName,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                                height: 250,
                                child: Image.asset(waste.imagePath)
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

}


class InputButton extends StatefulWidget{
  @override
  _InputButtonState createState() => _InputButtonState();
}


class _InputButtonState extends State<InputButton>{
  int counter = 0;
  var txt = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children:[
        //Minus Button
        Container(
          width: 30,
          height: 30,
          child: OutlinedButton(
            onPressed: () {
              setState((){
                if(counter==0){
                  counter = 0;
                }
                else{
                  counter--;
                }
                txt.text = counter.toString();
              });
            },
            child: Text('-',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF505050),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                )),
            style: OutlinedButton.styleFrom(
              side: BorderSide(
                color: Colors.grey,
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(7)),
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        Container(
          width: 50,
          height: 30,
          child: TextField(
            controller: txt,
            enabled: false,
            textAlign: TextAlign.center,
            textAlignVertical: TextAlignVertical.center,
            keyboardType: TextInputType.number,
            style: TextStyle(
              fontFamily: 'Poppins',
              color: Color(0xFF505050),
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0x469E9E9E),
              hintText: '0',
              contentPadding: EdgeInsets.zero,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        //Plus Button
        Container(
          width: 30,
          height: 30,
          child: OutlinedButton(
            onPressed: () {
              setState((){
                counter++;
                txt.text = counter.toString();
              });
            },
            child: Text('+',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF505050),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                )),
            style: OutlinedButton.styleFrom(
              side: BorderSide(
                color: Colors.grey,
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(7)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
