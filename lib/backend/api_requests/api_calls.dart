import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Spoonacular Group Code

class SpoonacularGroup {
  static String baseUrl =
      'https://api.spoonacular.com/recipes/complexSearch?apiKey=51c154fe3edb4db4a630911664fc7f55&';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  static GetrecetaCall getrecetaCall = GetrecetaCall();
  static GetrecetanutricionCall getrecetanutricionCall =
      GetrecetanutricionCall();
  static GetdetalleCall getdetalleCall = GetdetalleCall();
}

class GetrecetaCall {
  Future<ApiCallResponse> call({
    String? query = '',
    int? number = 5,
    bool? addRecipeInformation = false,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getreceta',
      apiUrl:
          '${SpoonacularGroup.baseUrl}query=$query&number=$number&addRecipeInformation=$addRecipeInformation',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic resultados(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
  dynamic totalResults(dynamic response) => getJsonField(
        response,
        r'''$.totalResults''',
      );
  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.results[:].id''',
        true,
      );
  dynamic title(dynamic response) => getJsonField(
        response,
        r'''$.results[:].title''',
        true,
      );
  dynamic image(dynamic response) => getJsonField(
        response,
        r'''$.results[:].image''',
        true,
      );
  dynamic imageType(dynamic response) => getJsonField(
        response,
        r'''$.results[:].imageType''',
        true,
      );
}

class GetrecetanutricionCall {
  Future<ApiCallResponse> call({
    String? titleMatch = '',
    int? number = 1,
    bool? addRecipeNutrition = true,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getrecetanutricion',
      apiUrl:
          '${SpoonacularGroup.baseUrl}titleMatch=$titleMatch&number=$number&addRecipeNutrition=$addRecipeNutrition',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic title(dynamic response) => getJsonField(
        response,
        r'''$.results[:].title''',
      );
  dynamic readyInMinutes(dynamic response) => getJsonField(
        response,
        r'''$.results[:].readyInMinutes''',
      );
  dynamic servings(dynamic response) => getJsonField(
        response,
        r'''$.results[:].servings''',
      );
  dynamic sourceUrl(dynamic response) => getJsonField(
        response,
        r'''$.results[:].sourceUrl''',
      );
  dynamic image(dynamic response) => getJsonField(
        response,
        r'''$.results[:].image''',
      );
  dynamic nutrients(dynamic response) => getJsonField(
        response,
        r'''$.results[:].nutrition.nutrients[:].name''',
        true,
      );
  dynamic nutrientamount(dynamic response) => getJsonField(
        response,
        r'''$.results[:].nutrition.nutrients[:].amount''',
        true,
      );
  dynamic nutrientunit(dynamic response) => getJsonField(
        response,
        r'''$.results[:].nutrition.nutrients[:].unit''',
        true,
      );
  dynamic nutrientpercentday(dynamic response) => getJsonField(
        response,
        r'''$.results[:].nutrition.nutrients[:].percentOfDailyNeeds''',
        true,
      );
  dynamic caloricbreakdown(dynamic response) => getJsonField(
        response,
        r'''$.results[:].nutrition.caloricBreakdown''',
      );
}

class GetdetalleCall {
  Future<ApiCallResponse> call({
    String? query = '',
    int? number = 5,
    bool? addRecipeInformation = true,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getdetalle',
      apiUrl:
          '${SpoonacularGroup.baseUrl}query=$query&number=$number&addRecipeInformation=$addRecipeInformation',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic resultados(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
  dynamic totalResults(dynamic response) => getJsonField(
        response,
        r'''$.totalResults''',
      );
  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.results[:].id''',
        true,
      );
  dynamic title(dynamic response) => getJsonField(
        response,
        r'''$.results[:].title''',
        true,
      );
  dynamic image(dynamic response) => getJsonField(
        response,
        r'''$.results[:].image''',
        true,
      );
  dynamic imageType(dynamic response) => getJsonField(
        response,
        r'''$.results[:].imageType''',
        true,
      );
  dynamic readyInMinutes(dynamic response) => getJsonField(
        response,
        r'''$.results[:].readyInMinutes''',
        true,
      );
  dynamic servings(dynamic response) => getJsonField(
        response,
        r'''$.results[:].servings''',
        true,
      );
  dynamic sourceUrl(dynamic response) => getJsonField(
        response,
        r'''$.results[:].sourceUrl''',
        true,
      );
  dynamic descripcion(dynamic response) => getJsonField(
        response,
        r'''$.results[:].summary''',
        true,
      );
  dynamic numerodepaso(dynamic response) => getJsonField(
        response,
        r'''$.results[:].analyzedInstructions[:].steps[:].number''',
        true,
      );
  dynamic paso(dynamic response) => getJsonField(
        response,
        r'''$.results[:].analyzedInstructions[:].steps[:].step''',
        true,
      );
  dynamic nombreingredientes(dynamic response) => getJsonField(
        response,
        r'''$.results[:].analyzedInstructions[:].steps[:].ingredients[:].name''',
        true,
      );
  dynamic nombreequipo(dynamic response) => getJsonField(
        response,
        r'''$.results[:].analyzedInstructions[:].steps[:].equipment[:].name''',
        true,
      );
  dynamic tiempoporpaso(dynamic response) => getJsonField(
        response,
        r'''$.results[:].analyzedInstructions[:].steps[:].length.number''',
        true,
      );
  dynamic unidadtiempopaso(dynamic response) => getJsonField(
        response,
        r'''$.results[:].analyzedInstructions[:].steps[:].length.unit''',
        true,
      );
}

/// End Spoonacular Group Code

/// Start Spoonacular Copy Group Code

class SpoonacularCopyGroup {
  static String baseUrl =
      'https://api.spoonacular.com/recipes/complexSearch?apiKey=51c154fe3edb4db4a630911664fc7f55&';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  static GetdetalleCopyCall getdetalleCopyCall = GetdetalleCopyCall();
}

class GetdetalleCopyCall {
  Future<ApiCallResponse> call({
    String? query = '',
    int? number = 5,
    bool? addRecipeInformation = true,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getdetalle Copy',
      apiUrl:
          '${SpoonacularCopyGroup.baseUrl}query=$query&number=$number&addRecipeInformation=$addRecipeInformation',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic resultados(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
  dynamic totalResults(dynamic response) => getJsonField(
        response,
        r'''$.totalResults''',
      );
  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.results[:].id''',
        true,
      );
  dynamic title(dynamic response) => getJsonField(
        response,
        r'''$.results[:].title''',
        true,
      );
  dynamic image(dynamic response) => getJsonField(
        response,
        r'''$.results[:].image''',
        true,
      );
  dynamic imageType(dynamic response) => getJsonField(
        response,
        r'''$.results[:].imageType''',
        true,
      );
  dynamic readyInMinutes(dynamic response) => getJsonField(
        response,
        r'''$.results[:].readyInMinutes''',
        true,
      );
  dynamic servings(dynamic response) => getJsonField(
        response,
        r'''$.results[:].servings''',
        true,
      );
  dynamic sourceUrl(dynamic response) => getJsonField(
        response,
        r'''$.results[:].sourceUrl''',
        true,
      );
  dynamic descripcion(dynamic response) => getJsonField(
        response,
        r'''$.results[:].summary''',
        true,
      );
  dynamic numerodepaso(dynamic response) => getJsonField(
        response,
        r'''$.results[:].analyzedInstructions[:].steps[:].number''',
        true,
      );
  dynamic paso(dynamic response) => getJsonField(
        response,
        r'''$.results[:].analyzedInstructions[:].steps[:].step''',
        true,
      );
  dynamic nombreingredientes(dynamic response) => getJsonField(
        response,
        r'''$.results[:].analyzedInstructions[:].steps[:].ingredients[:].name''',
        true,
      );
  dynamic nombreequipo(dynamic response) => getJsonField(
        response,
        r'''$.results[:].analyzedInstructions[:].steps[:].equipment[:].name''',
        true,
      );
  dynamic tiempoporpaso(dynamic response) => getJsonField(
        response,
        r'''$.results[:].analyzedInstructions[:].steps[:].length.number''',
        true,
      );
  dynamic unidadtiempopaso(dynamic response) => getJsonField(
        response,
        r'''$.results[:].analyzedInstructions[:].steps[:].length.unit''',
        true,
      );
}

/// End Spoonacular Copy Group Code

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
