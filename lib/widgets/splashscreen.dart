import 'package:banana_snack_application/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

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
        gradient: LinearGradient(colors: [ Colors.white, Color.fromARGB(500, 252, 206, 47)],
        begin: Alignment.bottomLeft,
        ),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: Get.width * 0.6,
                  height: Get.width * 0.6,
                  child: Image.asset("assets/logo/logo.png"),
                ),
              ],
            ),

             Container(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(padding: const EdgeInsets.only(bottom: 10),
                child: Text("Obugame",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold),
                ),
                ),
              ],
              ),
            )

           
          ],
          
        ),


        

      

        




      ),
    );
  }
}