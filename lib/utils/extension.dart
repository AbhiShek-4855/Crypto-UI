import 'package:flutter/material.dart';

extension SpaceWidget on double {

  addHSpace() {
    return SizedBox(
      height: this,
    );
  }

  addWSpace() {
    return SizedBox(
      width: this,
    );
  }
}


/// add Line from hide keyboard
hideKeyboard(BuildContext context) {
  FocusScope.of(context).requestFocus(FocusNode());
}

