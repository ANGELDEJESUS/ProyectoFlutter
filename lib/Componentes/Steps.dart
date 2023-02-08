import 'package:flutter/material.dart';
import 'package:helloworld/Pantallas/MyHomePage.dart';

class Steps extends StatefulWidget {
  @override
  _StepsState createState() => _StepsState();
}

class _StepsState extends State<Steps> {
  int _currentStep = 0;
  StepperType stepperType = StepperType.horizontal;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Stepper(
        type: StepperType.vertical,
        physics: ScrollPhysics(),
        currentStep: _currentStep,
        onStepTapped: (step) => tapped(step),
        onStepContinue: continued,
        onStepCancel: cancel,
        steps: <Step>[
          Step(
            title: new Text('Datos Generales'),
            content: Column(
              children: <Widget>[FormularioHome()],
            ),
            isActive: _currentStep >= 0,
            state: _currentStep >= 0 ? StepState.complete : StepState.disabled,
          ),
          Step(
            title: new Text('Address'),
            content: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: 'Home Address'),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Postcode'),
                ),
              ],
            ),
            isActive: _currentStep >= 0,
            state: _currentStep >= 1 ? StepState.complete : StepState.disabled,
          ),
          Step(
            title: new Text('Mobile Number'),
            content: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: 'Mobile Number'),
                ),
              ],
            ),
            isActive: _currentStep >= 0,
            state: _currentStep >= 2 ? StepState.complete : StepState.disabled,
          ),
        ],
      ),
    );
  }

  switchStepsType() {
    setState(() => stepperType == StepperType.horizontal
        ? stepperType = StepperType.vertical
        : stepperType = StepperType.horizontal);
  }

  tapped(int step) {
    setState(() => _currentStep = step);
  }

  continued() {
    _currentStep < 2 ? setState(() => _currentStep += 1) : null;
  }

  cancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }
}
