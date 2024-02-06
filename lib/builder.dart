import 'package:flutter/material.dart';

class builder extends StatelessWidget {
  const builder({super.key});

  @override
  Widget build(BuildContext context) {
      final List<String> items = List.generate(100, (index) => 'Item $index');
    return Scaffold(
      appBar: AppBar(title: const Text('builder'),), 
    body:Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
             
              return ListTile(
                title: Text(items[index]),
               
              );
            },
          ),
        ),
      ],
    )
    );
  }
}
