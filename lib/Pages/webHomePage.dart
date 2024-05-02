import 'package:animal_park_web/widget/WebFeatures.dart';
import 'package:animal_park_web/widget/divider.dart';
import 'package:animal_park_web/widget/mainInfo.dart';
import 'package:flutter/material.dart';

class WebHomePage extends StatelessWidget {
  const WebHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    var theme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            "assets/Images/logo.png",
            width: 30,
          ),
        ),
        title: Text(
          "AnimalPark",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: theme.onBackground,
          ),
        ),
        actions: [
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.download),
            label: Text("Download App"),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: SingleChildScrollView(
          child: Column(
            children: [
              MainInfo(),
              SizedBox(height: 40),
              MyDivider(),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Features",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: theme.onBackground,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WebFeaturesTile(
                    icon: Icons.info,
                    title: "Easy to use",
                    descrtiption:
                        "App is A Easy to Use App Where You Can Connect With Each Other",
                  ),
                  WebFeaturesTile(
                    icon: Icons.call,
                    title: "Chat With Friends",
                    descrtiption:
                        "AnimalPark App is A best for comunicating with friend anf family",
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WebFeaturesTile(
                    icon: Icons.video_call,
                    title: "One to One video Call",
                    descrtiption: "One to One video Call",
                  ),
                  WebFeaturesTile(
                    icon: Icons.group,
                    title: "Group Chat",
                    descrtiption:
                        "AnimalPark App is A Easy to use app where you can connect with each other",
                  ),
                ],
              ),
              // SizedBox(height: 40),
              // MyDivider(),
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Made with ❤️ By Harshil Sutariya",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
