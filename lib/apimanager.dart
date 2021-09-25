import 'package:blocstateapp/BLoc/constant/string.dart';
import 'package:http/http.dart' as http;

// ignore: camel_case_types
class API_manger {
  void getnews() async {
    var client = http.Client();
    // ignore: unused_local_variable
    var response = await client.get(Uri.parse(Strings.News_url));
    if (response.statusCode == 200) {
      var jsonString = response.body;
    }
  }
}
