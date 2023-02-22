import 'package:parse_server_sdk/parse_server_sdk.dart';

class Back4App {
  static const String baseUrl = 'https://parseapi.back4app.com/classes/';

  static Future<void> initParse() async {
    const keyApplicationId = '9YahmBGpxwJDeFwzw0ka3gwfQuObr8jG05U6VUVD';
    const keyClientKey = 'YaoYnpwms7ExuFW8AgIvNBsMVb9hQkmw1V34Deyk';
    const keyParseServerUrl = 'https://parseapi.back4app.com';

    await Parse().initialize(keyApplicationId, keyParseServerUrl,
        clientKey: keyClientKey, autoSendSessionId: true);

    var addUser = ParseObject('todoFlutter')
      ..set('message', 'Hey! sconde message from Flutter')
      ..set('keyid', 125)
      ..set('DeleteTime', DateTime.now());
    await addUser.save();
  }
}
