import 'dart:typed_data';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<dynamic> sendRequest(
  Uri url,
  Uint8List? fileBytes,
  String? fieldJson,
) async {
  if ((fileBytes == null) && (fieldJson == null)) {
    throw ("ファイルかJSONのどちらかは必須です");
  }
  final multipartRequest = http.MultipartRequest('POST', url);
  // File 存在する場合のみ
  if (fileBytes != null) {
    final file = http.MultipartFile.fromBytes(
      'file',
      fileBytes,
      filename: 'default',
    );
    multipartRequest.files.add(file);
  }
  // JSON 存在する場合のみ
  if (fieldJson != null) {
    multipartRequest.fields['json'] = fieldJson;
  }

  final streamedResponse = await multipartRequest.send();
  final stringResponse = await streamedResponse.stream.bytesToString();
  final decodedResponse = json.decode(stringResponse);
  return decodedResponse;
}
