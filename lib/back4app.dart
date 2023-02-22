import 'package:parse_server_sdk/parse_server_sdk.dart';

class Back4App {
  static const String baseUrl = 'https://parseapi.back4app.com/classes/';

  static Future<void> addParse() async {
    var addUser = ParseObject('todoFlutter')
      ..set('message', 'Hey! sconde message from Flutter')
      ..set('keyid', 78125)
      ..set('DeleteTime', DateTime.now());
    await addUser.save();
  }

  static Future<void> updateParse() async {
    var updateUser = ParseObject('todoFlutter')
      ..objectId = 'DJOwDK0Fjm'
      ..set('message', 'Hey! First updated message from Flutter')
      ..set('keyid', 44555)
      ..set('DeleteTime', DateTime.now());
    await updateUser.save();
  }

  static Future<void> deleteParse() async {
    var deleteUser = ParseObject('todoFlutter')
    ..objectId = 'bZSPBmWAxw';
    //..unset('message'); // Delete Culumn
    deleteUser.delete();

    await deleteUser.save();
  }
}
