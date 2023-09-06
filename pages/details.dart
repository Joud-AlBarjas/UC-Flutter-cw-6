import 'package:flutter/material.dart';
import 'package:flutter_project_six/Landmarks.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.flutter});
  final Building flutter;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.network(flutter.imgUrl),
            SizedBox(
              height: 30,
            ),
            Text(flutter.name)
          ],
        ),
      ),
    );
  }
}
