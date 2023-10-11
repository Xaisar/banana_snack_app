import 'package:banana_snack_application/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> 
with SingleTickerProviderStateMixin{
    @override
    void initState(){
      super.initState();
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

      Future.delayed(Duration(seconds: 2),(){
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (_) => const HomeView(),
        ),
        );
      });
    }

    @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, 
    overlays: SystemUiOverlay.values);
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.blue, Colors.purple],
        begin: Alignment.bottomLeft,
        ), 
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.edit,
            size:80,
            color: Colors.white,)
          ],
        ),


      ),
    );
  }
}