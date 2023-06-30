import 'package:flutter/material.dart';

//Widgets
import '../../Widgets/back_button.dart';

//Colors
import 'package:espeats/src/colors/colors.dart';


class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Builder( builder: (BuildContext context){
          return backButton(context, Colors.black);
        }),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30.0),
          child:  Column(
            children: [
              const Text("Crear una cuenta", style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30.0
              )),
              //color: THeme.of(context).primaryColor
              _userNameInput(context),
              _emailInput(context),
              _phoneInput(context),
              _dayOfBirthInput(context),
              _passwordInput(context),
              _signUpButton(context),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                child: const Text("Al hacer clic en Registrarse, "
                    "acepta los siguientes Términos y condiciones",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 13.0 )),
              )
            ],
          ),
        ),
      ) ,
    );
  }
}

Widget _userNameInput(BuildContext context){
  return Container(
      margin: const EdgeInsets.only(top: 40.0),
      padding: const EdgeInsets.only(left: 20.0) ,
      decoration: BoxDecoration(
          color: bgInputs,
          borderRadius: BorderRadius.circular(30.0)
      ),
      child: const TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            hintText: "Ingresa tu nombre de usuario",
            border: OutlineInputBorder(
                borderSide: BorderSide.none
            )
        ),
      )
  );
}

Widget _emailInput(BuildContext context){
  return Container(
      margin: const EdgeInsets.only(top: 10.0),
      padding: const EdgeInsets.only(left: 20.0) ,
      decoration: BoxDecoration(
          color: bgInputs,
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

Widget _phoneInput(BuildContext context){
  return Container(
      margin: const EdgeInsets.only(top: 10.0),
      padding: const EdgeInsets.only(left: 20.0) ,
      decoration: BoxDecoration(
          color: bgInputs,
          borderRadius: BorderRadius.circular(30.0)
      ),
      child: const TextField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
            hintText: "Celular",
            border: OutlineInputBorder(
                borderSide: BorderSide.none
            )
        ),
      )
  );
}

Widget _dayOfBirthInput(BuildContext context){
  return Container(
      margin: const EdgeInsets.only(top: 10.0),
      padding: const EdgeInsets.only(left: 20.0) ,
      decoration: BoxDecoration(
          color: bgInputs,
          borderRadius: BorderRadius.circular(30.0)
      ),
      child: const TextField(
        keyboardType: TextInputType.datetime,
        decoration: InputDecoration(
            hintText: "Fecha de nacimiento",
            border: OutlineInputBorder(
                borderSide: BorderSide.none
            )
        ),
      )
  );
}

Widget _passwordInput(BuildContext context){
  return Container(
      margin: const EdgeInsets.only(top: 10.0),
      padding: const EdgeInsets.only(left: 20.0) ,
      decoration: BoxDecoration(
          color: bgInputs,
          borderRadius: BorderRadius.circular(30.0)
      ),
      child: const TextField(
        obscureText: true,
        decoration: InputDecoration(
            hintText: "Contraseña",
            border: OutlineInputBorder(
                borderSide: BorderSide.none
            )
        ),
      )
  );
}

Widget _signUpButton( BuildContext context){
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

        },
        child: const Text("Registrarse", style:TextStyle(
            color: Colors.white,
            fontSize: 17.0
        )),
      )
  );
}
