import 'package:flutter/cupertino.dart';

class CompanyDetailProvider with ChangeNotifier {
  bool isVesible = true;
  TextEditingController a1Controller = TextEditingController();
  TextEditingController a2Controller = TextEditingController();
  TextEditingController b1Controller = TextEditingController();
  TextEditingController b2Controller = TextEditingController();
  TextEditingController c1Controller = TextEditingController();
  TextEditingController c2Controller = TextEditingController();

  final List<String> items = [
    "Panda",
    "Carrefour",
    "Othaim",
    "Danube",
    "Bindawood",
    "Spar",
  ];


}