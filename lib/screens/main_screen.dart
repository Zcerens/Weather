import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/rainy.png'), fit: BoxFit.cover)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Container(
                    child: const Icon(
                  FontAwesomeIcons.cloud,
                  size: 75.0,
                  color: Colors.white,
                )),
                const SizedBox(
                  height: 10,
                ),
                const Center(
                    child: Text(
                  '12 °',
                  style: TextStyle(
                      color: Colors.black, fontSize: 80.0, letterSpacing: -8),
                ))
              ],
            )));
  }
}
