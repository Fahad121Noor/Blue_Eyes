

import 'package:flutter/cupertino.dart';

import '../../../corefile/constaints/image.dart';

class SignInProvider with ChangeNotifier {

  Images imagePath = Images();

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

}