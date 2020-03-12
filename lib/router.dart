import 'package:flutter/material.dart';
import 'home.dart';
import 'widgets/dialog_flow.dart';
import 'widgets/employees_profile.dart';

const String FACTS_DIALOGFLOW = "FACTS_DIALOGFLOW";
const String EMPLOYEES_PROFILE = "EMPLOYEES_PROFILE";

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch(routeSettings.name) {
    case '/':
      return MaterialPageRoute(builder: (context) => MyHomePage());
      break;

    case FACTS_DIALOGFLOW:
      return MaterialPageRoute(builder: (context) => FlutterFactsDialogFlow());
      break;
    
    case EMPLOYEES_PROFILE:
      return MaterialPageRoute(builder:(context)=> EmployeesProfile());
      break;

    default:
      return MaterialPageRoute(builder: (context) => MyHomePage());
  }
}