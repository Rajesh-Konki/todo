
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Todo extends StatefulWidget{
  @override
  TodoState createState()=>TodoState();
}
class TodoState extends State<Todo>{
  String name='';
  String notes='';
  bool change=false;
  Widget build(BuildContext context){
      return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          backgroundColor: Color(0xFFB4C56C).withOpacity(0.5),
          title: Row(children: <Widget>[
            new Image.asset("asset\images\homeicon.png"),
            new Text("Todo")
          ],),
        ),
        body: textAdd(),
        backgroundColor: Color.fromRGBO(96,96,96, 150.0),
        
      );
  }


  
   Widget textAdd(){
     return Column(
       
      // mainAxisAlignment:MainAxisAlignment.spaceEvenly,
       children: <Widget>[
         
        new Text("Name",style: TextStyle(color:Colors.white70),),
        new TextFormField(onSaved: (String val){
          name=val;
        },
          decoration: const InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(2.5)),
          ),
          hintText: 'task Name'
          
        ),
    ),
        new Text("Notes",style: TextStyle(color:Colors.white70),textAlign: TextAlign.left,),
        new TextFormField(onSaved: (String val){
              notes=val;
        },
          decoration: const InputDecoration(
          
          border: OutlineInputBorder(
            
            borderRadius: BorderRadius.all(Radius.circular(2.5)),
            
          ),
          hintText: '',)),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
            new Text("Done",style: TextStyle(color: Colors.white70)),
        new Switch(
          
           value: change,
           onChanged:(bool value){
             setState(() {
              change=value; 
             });
           })
          ],),
          
        
        new RaisedButton(
          child: new Text("Save",style: TextStyle(color: Colors.white),textAlign: TextAlign.start),
          onPressed: null,

        ),
        new RaisedButton(
          child: new Text("Delete",style: TextStyle(color: Colors.white)),
          onPressed: null,

        ),
        new RaisedButton(
          child: new Text("Cancel",style: TextStyle(color: Colors.white)),
          onPressed: null,

        ),
        new RaisedButton(
          child: new Text("Speak",style: TextStyle(color: Colors.white)),
          onPressed: null,

        )
          
      
      

      ],

    );
  
   }
}