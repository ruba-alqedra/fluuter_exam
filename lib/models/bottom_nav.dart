import 'package:flutter/material.dart';

class BottomNavigation {
  Widget _screen;

  Widget get screen => _screen;

  set screen(Widget value) {
    _screen = value;
  }

  BottomNavigation(this._screen);
}
