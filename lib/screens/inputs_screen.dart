
import 'package:fl_components_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {

      'first_name': '',
      'last_name' : '',
      'email'     : '',
      'password'  : '',
      'role'      : '',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10 ),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputFill( labelText: 'Nombre', suffixIcon: Icons.assignment_ind_outlined, formProperty: 'first_name', formValues: formValues),
                const SizedBox( height: 30 ),
          
                CustomInputFill( labelText: 'Apellido', hintText: 'Apellido del usuario', formProperty: 'last_name', formValues: formValues ),
                const SizedBox( height: 30 ),
          
                CustomInputFill( labelText: 'Email', keyboardType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues ),
                const SizedBox( height: 30 ),
          
                CustomInputFill( labelText: 'Contraseña', obscureText: true, formProperty: 'password', formValues: formValues ),
                const SizedBox( height: 30 ),

                DropdownButtonFormField<String>(
                  items: const [
                    DropdownMenuItem( value: 'Administrador', child: Text('Administrador')),
                    DropdownMenuItem( value: 'Super usuario', child: Text('Super usuario')),
                    DropdownMenuItem( value: 'Desarrollador', child: Text('Desarrollador')),
                    DropdownMenuItem( value: 'Jr. desarrollador', child: Text('Jr. desarrollador')),
                  ], 
                  onChanged: ( value ) {
                  formValues['role'] = value ?? 'Admin';
                  }
                ),
          
                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus( FocusNode() );
                    if (!myFormKey.currentState!.validate()) {
                      return;
                    }
                  },
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar'))
                  )
                )
          
              ],
            ),
          ),
        ),
      )
    );
  }
}

