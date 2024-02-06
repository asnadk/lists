import 'package:flutter/material.dart';
import 'package:flutter_list/builder.dart';


class MySeparatedListView extends StatelessWidget {
  // Sample data for the list
  final List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("saperated"),
      ),     
      
      body:Column(
        children: [
          Expanded(
            child: ListView.separated(
            itemCount: items.length,
            separatorBuilder: (BuildContext context, int index) {
              
              return const Divider(
                color: Color.fromARGB(255, 238, 11, 11),
                thickness: 1.0,
              );
            },
            itemBuilder: (BuildContext context, int index) {
            
              return ListTile(
                title: Text(items[index]),
                
              );
            },
            
                ),
          ),
              ElevatedButton(onPressed: (){
                Navigator.of(context).push
                (MaterialPageRoute(builder: (context)=>builder()));
              },
               style:ElevatedButton.styleFrom(backgroundColor: Colors.blue),
               child: const Text("next",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0 ,),))
        ],
      )
    );
  }
}
