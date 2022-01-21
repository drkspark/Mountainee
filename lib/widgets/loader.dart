import 'package:flutter/material.dart';

loader(BuildContext context) {
  showDialog(
      barrierDismissible:
          false, // This will make sure that the dialog box closes only when OK button is tapped
      context: context,
      builder: (context) =>Center(child: CircularProgressIndicator())
  );
}
