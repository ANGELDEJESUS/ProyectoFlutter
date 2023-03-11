// ignore_for_file: avoid_unnecessary_containers

import 'dart:math';

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

  int tamano() {
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    int _height = media.height.toInt();
    int _with = media.width.toInt();
    if (_height > 320) {
      //_height = 100;
    }
    return Stepper(
      //margin: const EdgeInsets.all(double.infinity),
      type: stepperType,
      //physics: ScrollPhysics(),
      currentStep: _currentStep,
      controlsBuilder: (context, details) => Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: _height.toDouble() < 570
                          ? 0
                          : _height.toDouble() - 570),
                  child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(4),
                                    bottomRight: Radius.circular(4),
                                    topLeft: Radius.circular(4),
                                    topRight: Radius.circular(0)))),
                      ),
                      onPressed: details.onStepCancel,
                      child: Container(
                          alignment: Alignment.center,
                          /* margin: const EdgeInsets.symmetric(
                              horizontal: 1, vertical: 20),*/
                          child: const Text(
                            'Cancelar',
                            style: TextStyle(fontSize: 14),
                          ))),
                ),
              ],
            ),
          ),
          Expanded(child: Text("")),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: _height.toDouble() < 570
                          ? 0
                          : _height.toDouble() - 570),
                  child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(4),
                                    bottomRight: Radius.circular(4),
                                    topLeft: Radius.circular(4),
                                    topRight: Radius.circular(0)))),
                      ),
                      onPressed: details.onStepContinue,
                      child: Container(
                          alignment: Alignment.center,
                          /*margin: const EdgeInsets.symmetric(
                              horizontal: 100, vertical: 20),*/
                          child: const Text(
                            'Continuar',
                            style: TextStyle(fontSize: 14),
                          ))),
                ),
              ],
            ),
          ),
        ],
      ),
      onStepTapped: (step) => tapped(step),
      onStepContinue: continued,
      onStepCancel: cancel,
      elevation: 5,
      steps: <Step>[
        Step(
          title: new Text(''),
          content: Column(
            children: <Widget>[
              FormularioHome(),
              Text("${media.height}X${media.width}"),
            ],
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
