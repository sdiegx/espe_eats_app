import 'package:flutter/material.dart';

import '../../Widgets/back_button.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Builder( builder: (BuildContext context) {
            return backButton(context, Colors.black);
          }),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Text("¿Has olvidado tu contraseña?", textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineSmall),
              Container(
                padding: const EdgeInsets.all(10.0),
                child: const Text("Por favor ingrese su correo electrónico. "
                    "Recibirá un enlace para crear una nueva contraseña.", textAlign: TextAlign.center,
                    style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 15.0 )),
              ),
              _emailInput(),
              _sendButton(context)
            ],
          ),
        ),
      ),
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
            hintText: "Tu correo electrónico",
            border: OutlineInputBorder(
                borderSide: BorderSide.none
            )
        ),
      )
  );
}

Widget _sendButton( BuildContext context){
  return Container(
      width: 350.0,
      height: 50.0,
      margin: const EdgeInsets.only(top: 40.0),
      child: ElevatedButton(//poner color del theme
        onPressed: (){
          _showAlertFP(context);
        },
        child: Text("Enviar", style: Theme.of(context).textTheme.titleSmall),

      )
  );
}


void _showAlertFP(BuildContext context){
  showDialog(
      context: context,
      barrierDismissible: true,
      builder: ( BuildContext context){
        return AlertDialog(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))
          ),
          content: SizedBox(
            height: 380.0,
            child: Column(
              children: [
                const Image(
                  width: 130.0,
                  height: 130.0,
                  image: AssetImage('assets/icons/send.png'),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Tu contraseña ha sido restablecida.",
                      style: Theme.of(context).textTheme.titleLarge),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: const Text("En breve recibirá un correo electrónico con un código para configurar una nueva contraseña.",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 15.0 )),
                ),
                _doneButton(context)
              ],
            ),
          ),
        );
      }
  );
}

Widget _doneButton(BuildContext context){
  return Container(
      margin: const EdgeInsets.only(top: 40.0),
      child: ElevatedButton(//poner color del theme
        onPressed: (){
          Navigator.pushNamed(context, 'login');
        },
        child: Text("¡Está hecho!", style: Theme.of(context).textTheme.titleSmall),
      )
  );
}