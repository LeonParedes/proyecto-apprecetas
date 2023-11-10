import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start tasty Group Code

class TastyGroup {
  static String baseUrl = 'https://tasty.p.rapidapi.com/recipes/list';
  static Map<String, String> headers = {
    'X-RapidAPI-Key': '9399f9db28msh09e3b2448c72704p1c59bajsna726a6cbd458',
    'X-RapidAPI-Host': 'tasty.p.rapidapi.com',
  };
  static GetrecetafullCall getrecetafullCall = GetrecetafullCall();
}

class GetrecetafullCall {
  Future<ApiCallResponse> call({
    String? q = '??',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getrecetafull',
      apiUrl: '${TastyGroup.baseUrl}?from=0&size=1&q=$q',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '9399f9db28msh09e3b2448c72704p1c59bajsna726a6cbd458',
        'X-RapidAPI-Host': 'tasty.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic instructions(dynamic response) => getJsonField(
        response,
        r'''$.results[:].instructions[:].display_text''',
        true,
      );
  dynamic ingredients(dynamic response) => getJsonField(
        response,
        r'''$.results[:].sections[:].components[:].raw_text''',
        true,
      );
  dynamic timerequired(dynamic response) => getJsonField(
        response,
        r'''$.results[:].total_time_tier.display_tier''',
      );
  dynamic titulo(dynamic response) => getJsonField(
        response,
        r'''$.results[:].name''',
        true,
      );
  dynamic video(dynamic response) => getJsonField(
        response,
        r'''$.results[:].original_video_url''',
      );
}

/// End tasty Group Code

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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
