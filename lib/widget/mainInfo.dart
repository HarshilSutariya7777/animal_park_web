import 'package:animal_park_web/Controller/AppController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainInfo extends StatelessWidget {
  const MainInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    AppController appController = Get.put(AppController());
    var theme = Theme.of(context).colorScheme;
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "AnimalPark",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: theme.onBackground,
                ),
              ),
              Text(
                "The Best App For Connecting with",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: theme.onBackground,
                ),
              ),
              Text(
                "Your Friends.",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: theme.onBackground,
                ),
              ),
              Text(
                "App version 1.0.",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w200,
                  color: Colors.green,
                ),
              ),
              Text(
                "App version 1.0.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.green,
                ),
              ),
              SizedBox(
                width: 700,
                child: Text(
                  "You can chat with your family and friends you can enjoy chat,Audio,video,Images,and audio and video call..",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: theme.onBackground,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      appController.downloadApk();
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      decoration: BoxDecoration(
                        color: theme.primary,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.android,
                            size: 30,
                          ),
                          SizedBox(width: 10),
                          Text("Download App"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: w / 2.6,
          width: w / 2.6,
          decoration: BoxDecoration(
            color: theme.primary,
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage("assets/Images/main.png"),
            ),
          ),
        )
      ],
    );
  }
}
