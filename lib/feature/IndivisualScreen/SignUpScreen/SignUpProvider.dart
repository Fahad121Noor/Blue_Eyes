import 'dart:developer';

import 'package:flutter/cupertino.dart';

import 'package:image_picker/image_picker.dart';

import '../../../corefile/constaints/image.dart';

class SignUpProvider with ChangeNotifier {
// SignUp Screen Controller
  TextEditingController firsNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController dobController = TextEditingController();

// User Detail Controller
  TextEditingController numberController = TextEditingController();
  TextEditingController confirmPhoneController = TextEditingController();
  TextEditingController nationalityController = TextEditingController();
  TextEditingController cityController = TextEditingController();

  String? selectedValue;
  final List<String> nationItems = [
    'KSA',
    'Pakistan',
    'UAE',
    'UK',
  ];
  final List<String> cityItems = [
    'Makkah',
    'Al Madinah',
    'Riyadh',
    'Dammam',
    'Jeddah',
    'Taif',
    'Tabuk',
    'Tabuk',
    'Abha',
    'Arar',
    'Hail',
  ];

  Images imagePath = Images();

  XFile? img;

  imagepicker() async {
    ImagePicker imagePicker = ImagePicker();
    img = (await imagePicker.pickImage(source: ImageSource.gallery))!;
    log(img!.path);

    notifyListeners();
  }
}
