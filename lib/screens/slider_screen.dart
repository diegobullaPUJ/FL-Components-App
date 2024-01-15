
import 'package:fl_components_app/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('sliders & checks'),
      ),
      body: Column(
        children: [
          
          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            value: _sliderValue,
            onChanged: _sliderEnabled 
            ? (value) {
              _sliderValue = value;
              setState(() {});
              }
            : null
          ),

          // Checkbox(
          //   value: _sliderEnabled, 
          //   onChanged: (value) {
          //     _sliderEnabled = value ?? true;
          //     setState(() {});
          //   }
          // ),

          // Switch(
          //   value: _sliderEnabled, 
          //   onChanged: ( value ) => setState(() { _sliderEnabled = value; })
          // ),

          // CheckboxListTile(
          //   title: const Text('Habilitar Slider'),
          //   activeColor: AppTheme.primary,
          //   value: _sliderEnabled, 
          //   onChanged: ( value ) => setState(() { _sliderEnabled = value ?? true; })
          // ),

          SwitchListTile(
            title: const Text('Habilitar Slider'),
            activeColor: AppTheme.primary,
            value: _sliderEnabled, 
            onChanged: ( value ) => setState(() { _sliderEnabled = value; })
          ),

      
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage('https://i.pinimg.com/originals/72/71/0b/72710bd4197858702e983cbecb18b6d7.jpg'),
                fit: BoxFit.contain,
                width: _sliderValue, 
              ),
            ),
          ),

      
      
        ],
      ),
    );
  }
}