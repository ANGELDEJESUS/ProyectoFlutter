// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:helloworld/Pantallas/MyHomePage.dart';

class Steps extends StatefulWidget {
  @override
  _StepperDemoState createState() => _StepperDemoState();
}

class _StepperDemoState extends State<Steps> {
  int _currentStep = 0;
  StepperType stepperType = StepperType.horizontal;

  @override
  Widget build(BuildContext context) {
    return Stepper(
      margin: const EdgeInsets.all(double.infinity),
      type: stepperType,
      physics: ScrollPhysics(),
      currentStep: _currentStep,
      onStepTapped: (step) => tapped(step),
      onStepContinue: continued,
      onStepCancel: cancel,
      elevation: 5,
      steps: <Step>[
        Step(
          title: new Text(''),
          content: Column(
            children: <Widget>[FormularioHome()],
          ),
          isActive: _currentStep >= 0,
          state: _currentStep >= 0 ? StepState.complete : StepState.disabled,
        ),
        Step(
          title: new Text(''),
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
          isActive: _currentStep >= 1,
          state: _currentStep >= 1 ? StepState.complete : StepState.disabled,
        ),
        Step(
          title: new Text(''),
          content: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Mobile Number'),
              ),
            ],
          ),
          isActive: _currentStep >= 2,
          state: _currentStep >= 2 ? StepState.complete : StepState.disabled,
        ),
      ],
    );
  }

  switchStepsType() {
    setState(() => stepperType == StepperType.vertical
        ? stepperType = StepperType.horizontal
        : stepperType = StepperType.vertical);
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
