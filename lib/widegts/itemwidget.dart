import 'package:codehub/courses/info.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {


  final Info cour;

  // ignore: unnecessary_null_comparison
  const ItemWidget({super.key, required this.cour}) :assert(cour != null);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(cour.image),
      title: Text(cour.name),
      subtitle: Text(cour.description),
      trailing: ElevatedButton(
        onPressed: () {},
        child: const Text("View"),
        style: TextButton.styleFrom(
          backgroundColor: Colors.blue,
        ),
      ),
    );
     
  }
}