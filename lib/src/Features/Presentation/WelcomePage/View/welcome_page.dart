import 'dart:ui';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/background_image.png')
              )
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
              child: Container(
                color: Colors.black.withOpacity(0.35),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Text("Cansado de ser pobre y vivir lejos? Ahora solo vive lejos",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displaySmall)
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 30.0),
                child: const Text("ESPEATS es tu solución", style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20.0
                )),
              ),
              SizedBox(
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, 'login');
                  },
                  child: Text("Iniciar Sesión", style: Theme.of(context).textTheme.titleSmall),
                )
              ),
              Container(
                  width: 350.0,
                  height: 50.0,
                  margin: const EdgeInsets.only(top: 20.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(0, 122, 255, 1.0)),
                      onPressed: (){
                      Navigator.pushNamed(context, 'login');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Image(
                          image: AssetImage('assets/icons/facebook.png'),
                          width: 30.0,
                          height: 30.0,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10.0),
                          child: Text("Conectar con Facebook", style: Theme.of(context).textTheme.titleSmall)
                        )
                      ],
                    )
                  )
              )
            ],
          )
        ],
      )
    );
    }
}
    