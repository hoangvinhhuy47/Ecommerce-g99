import 'package:app_demo/src/context/hive/User.dart';
import 'package:hive/hive.dart';

void addUser(User user) async {
  var box = await Hive.openBox('user');
  await box.put('user', user);
}

void getUser(User user) async {
  final box = await Hive.openBox('user');
  user = box.get('user');
}
