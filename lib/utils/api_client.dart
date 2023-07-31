import 'package:http/http.dart' as http;

class HTTP {
  static Function({String? url}) get get => ({url}) async {
        var uri = Uri.parse(url!);
        var response = await http.get(
          uri,
        );
        print(response.body);
      };
  static Function({String? url, String? payload}) get getPayload =>
      ({url, payload}) async {
        var uri = Uri.parse("${url}/?${payload}");
        var response = await http.get(
          uri,
        );
        return response.body;
      };

  static Function({String? url, Map<String, String>? body}) get post =>
      ({url, body}) async {
        var uri = Uri.parse(url!);
        var response = await http.post(
          uri,
          body: body,
        );
        print(response.body);
      };
}
