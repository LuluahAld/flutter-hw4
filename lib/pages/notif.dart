import 'package:flutter/material.dart';

class Notif extends StatelessWidget {
  const Notif({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              children: const [
                SizedBox(
                  height: 125,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Stay in the know',
                    style: TextStyle(
                      fontSize: 32,
                      fontFamily: 'JosefinSlab',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
