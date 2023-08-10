import 'package:flutter/material.dart';

class UserModel extends InheritedWidget {
  final String name;
  final String imgAvatar;
  final String birthDay;
  const UserModel({
    super.key,
    required this.name,
    required this.imgAvatar,
    required this.birthDay,
    required Widget child,
  }) : super(child: child);

  @override
  bool updateShouldNotify(covariant UserModel oldWidget) {
    return name != oldWidget.name ||
        imgAvatar != oldWidget.imgAvatar ||
        birthDay != oldWidget.birthDay;
  }

  static UserModel of(BuildContext context) {
    var userModel = context.dependOnInheritedWidgetOfExactType<UserModel>();
    assert(userModel != null, 'UserModel not exist in BuildContext');
    return userModel!;
  }

}
