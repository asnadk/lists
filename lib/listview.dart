import 'package:flutter/material.dart';
import 'package:flutter_list/saperated.dart';

class listview extends StatelessWidget {
  const listview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:const  Text('ListView Example'),
        ),
        body: ListView(
      children: <Widget>[
        const ListTile(
          title: Text("asnad"),
        ),
        
        const ListTile(
          title: Text('akash'),
        ),

        const ListTile(
          title: Text('shibin'),
        ),

        const ListTile(
          title: Text('vishnu'),
        ),
        
       ElevatedButton(onPressed:(){
        Navigator.of(context).push(MaterialPageRoute(
          builder:( context)=>MySeparatedListView())
          
          );
       },
       style:ElevatedButton.styleFrom(backgroundColor: Colors.blue),
        child: const Text("next",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0 ),))
        
      ],
        )
    );
  }
}
