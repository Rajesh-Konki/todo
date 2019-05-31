import 'package:flutter/material.dart';
import 'todo.dart';
class HomePage extends StatefulWidget{
  @override
  HomepageState createState()=>HomepageState();
}
class HomepageState extends State<HomePage>{
  String name='';
  String notes='';
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        bottomOpacity: 100,
        title: Row(
          children: <Widget>[
            new Image.asset("asset\images\homeicon.png"),
            new Text("Todo"),
            new IconButton(
              //alignment: Alignment(250,0),
              icon: new Icon(Icons.add,size: 30,),
              color: Colors.white,
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Todo()));
              },

            )
          ],
        ),
       // backgroundColor: Colors.blueAccent,
      
      ),
     body: makeListView(),

    );
  }


  
  
  Widget makeListView(){
   // bool change=false;
    return Scaffold(
         body:new Container(color: Colors.black45,

    ));
  }
}