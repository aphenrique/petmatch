import 'package:flutter/cupertino.dart';

class DrawerStore extends ValueNotifier<bool> {
  DrawerStore() : super(true);

  get isOpen => value;

  alternateDrawer() => value = !value;
}
