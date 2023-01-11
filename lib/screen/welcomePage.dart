import 'package:flutter/material.dart';
import 'package:traveling_ui/screen/homePage.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Spacer(),
                Image.asset(
                  "images/travel9.png",
                  ),
                const Text(
                  "Explore your journey \nonly with us",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20,),
                const Text(
                  "All your vacations destinations are here. \nenjoy your holiday",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15,
                  ),
                  textAlign:TextAlign.center,
                  ),

                const  Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: SizedBox(
                    width: double.maxFinite,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shape: const StadiumBorder(),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 15,
                        )
                      ),
                      child:const Text("Get Started")
                      ),
                  ),
                )  
              ],
            ),
          ),
        )
        )

    );
  }
}