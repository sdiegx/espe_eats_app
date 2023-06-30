import 'package:flutter/material.dart';

//Widgets
import '../../Widgets/back_button.dart';

//UI
import 'package:flutter/services.dart';

//Colors
import '../../../../colors/colors.dart';


class  LoginPage extends StatelessWidget {
  const LoginPage({super.key});


  @override
  Widget build(BuildContext context) {

    /*SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.light.copyWith(
            statusBarColor: Colors.black
        )
    );*/

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                const Image(
                  width: double.infinity,
                  height: 480.0,
                  //fit: BoxFit.cover,
                  image: AssetImage('assets/images/logo.jpeg'),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 50.0),
                  child: backButton(context, Colors.black),
                ),
              ],
            ),
            Transform.translate(
              offset: const Offset(0.0,-100.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                    child: Column(
                      children: [
                        const Text("Bienvenido", style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0
                        )),
                        const Text("Ingrese a su cuenta", style: TextStyle(
                            color: gray,
                            fontWeight: FontWeight.w500,
                            fontSize: 15.0 )),
                        _emailInput(),
                        _passwordInput(),
                        _loginButton(context),
                        Container(
                          margin: const EdgeInsets.only(top: 30.0),
                          child: GestureDetector(
                            onTap: (){
                               Navigator.pushNamed(context, 'forgot_password');
                            },
                            child: const Text("¿Olvidaste tu contraseña?", style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 17.0
                            )),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 30.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("¿No tienes una cuenta?", style: TextStyle(
                                    color: gray,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15.0
                                )),
                                GestureDetector(
                                  onTap: (){
                                    Navigator.pushNamed(context, 'sign_up');
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                                    child: const Text("Regístrate", style: TextStyle(
                                        color: Color.fromRGBO(255, 140, 0, 1.0),//Theme.of(context).accentoColor,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15.0
                                    )),
                                  ),
                                ),
                              ]
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}

Widget _emailInput(){
  return Container(
      margin: const EdgeInsets.only(top: 40.0),
      padding: const EdgeInsets.only(left: 20.0) ,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(142, 142, 147, 1.2),
          borderRadius: BorderRadius.circular(30.0)
      ),
      child: const TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: "Correo electrónico",
            border: OutlineInputBorder(
                borderSide: BorderSide.none
            )
        ),
      )
  );
}

Widget _passwordInput(){
  return Container(
      margin: const EdgeInsets.only(top: 15.0),
      padding: const EdgeInsets.only(left: 20.0) ,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(142, 142, 147, 1.2),
          borderRadius: BorderRadius.circular(30.0)
      ),
      child: const TextField(
        obscureText: true,
        //enableSuggestions: false,
        //autocorrect: false,
        decoration: InputDecoration(
            hintText: "Contraseña",
            border: OutlineInputBorder(
                borderSide: BorderSide.none
            )
        ),
      )
  );
}

Widget _loginButton( BuildContext context){
  return Container(
      width: 350.0,
      height: 50.0,
      margin: const EdgeInsets.only(top: 30.0),
      child: ElevatedButton(//poner color del theme
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)
            ),
          backgroundColor: const Color.fromRGBO(255, 140, 0, 1.0)
        ),
        onPressed: (){
          Navigator.pushNamed(context, 'tabs');
        },
        child: const Text("Iniciar Sesión", style:TextStyle(
            color: Colors.white,
            fontSize: 17.0
        )),
      )
  );
}