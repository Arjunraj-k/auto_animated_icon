import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:auto_animated_icon/auto_animated_icon.dart';

void main() {
  test('create an auto animated icon', () {
    AutoAnimatedIcon(
      onPressed: (){
        print("OnPressed Works");
      },
      icon: AnimatedIcons.menu_close,
    );
  });
}
