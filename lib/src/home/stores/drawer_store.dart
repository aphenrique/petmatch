import 'package:flutter/cupertino.dart';

class DrawerStore extends ValueNotifier<bool> {
  DrawerStore() : super(false);

  get isOpen => value;

  alternateDrawer() => value = !value;
}
