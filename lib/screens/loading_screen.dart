import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';



class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();

}
class _LoadingScreenState extends State<LoadingScreen> {
  void initState() {
    super.initState();
    getlocationdata();
  }

    void getlocationdata() async {

   // print(weatherdata);
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return LocationScreen(locationWeather: weatherdata,);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:Center(child: SpinKitDoubleBounce(
      color: Colors.white,
      size: 200,
    )
    ),

    );
  }
}

