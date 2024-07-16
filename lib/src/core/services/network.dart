import 'dart:convert';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import '../../src.export.dart';

abstract class NetworkService {
  Future<Either<Failure, ValidResponse>> post({
    String baseUrl,
    String path,
    Map<String, String>? headers,
    Object? body,
    Map<String, dynamic>? params = const {},
    String? userToken,
  });
}

class NetworkServiceImpl implements NetworkService {
  final Map<String, String> _headers = {};

  @override
  Future<Either<Failure, ValidResponse>> post({
    String baseUrl = NetworkConstants.baseUrl,
    String path = '',
    Map<String, String>? headers,
    Object? body,
    Map<String, dynamic>? params,
    String? userToken,
  }) async {
    try {
      final uri = Uri.https(baseUrl, path, params);
      if (!uri.isAbsolute) throw Exception('Not valid URL');
      final response =
          await http.post(uri, headers: headers ?? _headers, body: body);
      final data = jsonDecode(response.body);
      final str = utf8.decode(response.bodyBytes);
      return Right(
        ValidResponse(
          statusCode: response.statusCode,
          data: json.decode(str),
          message: data[''] ?? '',
          status: data[''] ?? false,
        ),
      );
    } on SocketException catch (e) {
      return Left(Failure(statusCode: 500, message: e.message));
    } on ValidResponse catch (e) {
      return Right(ValidResponse(
          statusCode: e.statusCode,
          data: e.data,
          message: e.message,
          status: e.status));
    } on Exception catch (e) {
      return Left(Failure(statusCode: 500, message: e.toString()));
    }
  }
}
