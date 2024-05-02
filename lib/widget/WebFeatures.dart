import 'package:flutter/material.dart';

class WebFeaturesTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String descrtiption;
  const WebFeaturesTile(
      {super.key,
      required this.icon,
      required this.title,
      required this.descrtiption});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    var theme = Theme.of(context).colorScheme;
    return Container(
      padding: EdgeInsets.all(10),
      height: 135,
      width: w / 3.5,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(
              icon,
              size: 50,
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: theme.background),
                ),
                Text(
                  descrtiption,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: theme.background),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
