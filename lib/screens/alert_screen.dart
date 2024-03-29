
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {

  const AlertScreen({super.key});

  void displayDialogIos(BuildContext context) {
    showCupertinoDialog(
      barrierDismissible: true,
      context: context, 
      builder: ( context ) {
        return CupertinoAlertDialog(
          title: const Text('Titulo'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Este es el contenido de la alerta'),
              SizedBox(height: 10),
              FlutterLogo( size: 100),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancelar', style: TextStyle(color: Colors.red))
            ),
             TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Ok')
            ),
          ],
        );
      }
    );
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
      barrierDismissible: true,
      context: context, 
      builder: ( context ){
        return AlertDialog(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          title: const Text('Titulo'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Este es el contenido de la alerta'),
              SizedBox(height: 10),
              FlutterLogo( size: 100),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancelar', style: TextStyle(color: Colors.red))
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Ok')
            ),
          ],
        );
      } 
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alertas"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Platform.isAndroid 
          ? displayDialogAndroid(context)
          : displayDialogIos( context ),
          child: const Padding(
            padding: EdgeInsets.symmetric( horizontal: 20, vertical: 15 ),
            child: Text('Mostrar alarma', style: TextStyle( fontSize: 16 )),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_outlined), 
        onPressed: () { 
          Navigator.pop(context);
        }, 
      ),
    );
  }
}