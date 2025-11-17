import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SearchMoviesAndShowsCall {
  static Future<ApiCallResponse> call({
    String? query = 'Inception',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'SearchMoviesAndShows',
      apiUrl:
          'https://api.themoviedb.org/3/search/multi?api_key=7d159376ba370299d05c4e521f6c199b',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'query': query,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? showName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.results[0].name''',
      ));
  static String? movieTitle(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.results[0].title''',
      ));
  static String? poster(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.results[0].poster_path''',
      ));
  static String? mediaType(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.results[0].media_type''',
      ));
  static String? releaseDate(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.results[0].release_date''',
      ));
  static String? firstAirDate(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.results[0].first_air_date''',
      ));
  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.results[0].id''',
      ));
}

class AiMessageCall {
  static Future<ApiCallResponse> call({
    String? message = 'message',
  }) async {
    final ffApiRequestBody = '''
{
  "prompt": "${escapeStringForJson(message)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'aiMessage',
      apiUrl: 'https://myai-vsgdfespwq-uc.a.run.app',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? responseText(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.response_text''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
