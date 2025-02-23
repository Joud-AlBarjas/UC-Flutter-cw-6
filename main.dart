import 'package:flutter/material.dart';
import 'package:flutter_project_six/Landmarks.dart';
import 'package:flutter_project_six/pages/details.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  var buildings = [
    Building(
      name: 'أبراج الكويت',
      imgUrl:
          'https://user-images.githubusercontent.com/24327781/188260105-52be6a2e-a6d3-4ceb-86c0-ddc83e0aa5b6.jpeg',
    ),
    Building(
      name: 'برج التحرير',
      imgUrl:
          'https://user-images.githubusercontent.com/24327781/188260123-28de85b4-d272-4ebb-b2ad-22a9582079bf.jpeg',
    ),
    Building(
      name: 'المسجد الكبير',
      imgUrl:
          'https://user-images.githubusercontent.com/24327781/188260137-021d865a-625e-4941-ad75-6427c690e0cf.jpeg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
            child: ListView.builder(
                itemCount: buildings.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.network(buildings[index].imgUrl),
                    title: Text(buildings[index].name),
                    trailing: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DetailsPage(flutter: buildings[index])));
                        },
                        icon: Icon(Icons.ios_share)),
                  );
                })),
      ),
    );
  }
}
