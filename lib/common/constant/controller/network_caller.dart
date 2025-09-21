import 'dart:convert';
import 'dart:developer';

import 'package:driver_app/common/constant/controller/network_response.dart';
import 'package:http/http.dart';

class NetworkCaller {
  ///Post Request
  Future<NetworkResponse> postRequest(
    String url, {
    Map<String, dynamic>? body,
  }) async {
    try {
      Map<String, String> headers = {"Content-type":"application/json"};
      final response = await post(
        Uri.parse(url),
        body: jsonEncode(body),
        headers: headers,
      );
      log(url);
      log(response.body);
      if (response.statusCode == 200) {
        return NetworkResponse(
          isSuccess: true,
          statusCode: 200,
          jsonResponse: jsonDecode(response.body),
        );
      } else {
        return NetworkResponse(
          isSuccess: false,
          statusCode: 400,
          jsonResponse: jsonDecode(response.body),
        );
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  ///Get Request
  Future<NetworkResponse> getRequest(String url, String token) async {
    try {
      Map<String, String> headers = {
        "Content-type": "application/json",
        "Authorization": "Bearer $token",
      };

      final response = await get(Uri.parse(url), headers: headers);
      if (response.statusCode == 200) {
        log(response.body);
        return NetworkResponse(
          isSuccess: true,
          statusCode: 200,
          jsonResponse: jsonDecode(response.body),
        );
      } else {
        return NetworkResponse(
          isSuccess: false,
          statusCode: 400,
          jsonResponse: jsonDecode(response.body),
        );
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
