import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weather/utils/location.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  late LocationHelper locationData;

  Future<void> getLocationData() async {
    locationData = LocationHelper();
    await locationData.getCurrentLocation();

    if (locationData.latitude == null || locationData.longitude == null) {
      print("Konum bilgileri gelmiyor");
    } else {
      print("latitude: " + locationData.latitude.toString());
      print("longitude: " + locationData.longitude.toString());
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocationData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.blue, Colors.blueGrey])),
      child: Center(
          child: SpinKitCubeGrid(
        color: Colors.white,
        size: 150,
        duration: Duration(milliseconds: 1200),
      )),
    ));
  }
}
