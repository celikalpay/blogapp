// --------- STRINGS ----------
import 'package:flutter/material.dart';

const baseURL = 'http://192.168.2.46:8000/api';
const loginURL = baseURL + '/login';
const registerURL = baseURL + '/register';
const logoutURL = baseURL + '/logout';
const userURL = baseURL + '/user';
const postsURL = baseURL + '/posts';
const commentURL = baseURL + '/comments';

// -------- Errors ---------
const serverError = 'Server error';
const unauthorized = 'Unauthorized';
const somethingWhenWrong = 'Something went wrong, try again!';

// -------- Input Decoration -------
InputDecoration kInputDecoration(String label) {
  return InputDecoration(
    labelText: label,
    contentPadding: EdgeInsets.all(10),
    border: OutlineInputBorder(
      borderSide: BorderSide(
        width: 1,
        color: Colors.black,
      ),
    ),
  );
}

// Button
TextButton kTextButton(String label, Function onPressed) {
  return TextButton(
    child: Text(
      label,
      style: TextStyle(color: Colors.white),
    ),
    style: ButtonStyle(
      backgroundColor: MaterialStateColor.resolveWith((states) => Colors.blue),
      padding: MaterialStateProperty.resolveWith(
        (states) => EdgeInsets.symmetric(
          vertical: 10,
        ),
      ),
    ),
    onPressed: () => onPressed(),
  );
}

// loginRegisterHint
Row kLoginRegisterHint(String text, String label, Function onTap) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(text),
      GestureDetector(
        child: Text(
          label,
          style: TextStyle(color: Colors.blue),
        ),
        onTap: () => onTap(),
      ),
    ],
  );
}
