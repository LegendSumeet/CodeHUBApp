import 'package:codehub/courses/info.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {


  final Info cour;

  // ignore: unnecessary_null_comparison
  const ItemWidget({super.key, required this.cour}) :assert(cour != null);
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      elevation: 10.0,
      child: ListTile(
        leading: Image.network(cour.image),
        title: Text(cour.name),
        subtitle: Text(cour.description),
        trailing: ElevatedButton(
          onPressed: (){cour.link;},
          style: TextButton.styleFrom(
            backgroundColor: Colors.red,
            
          ),
          child: const Text("View"),
        ),
      ),
    );
  }
}