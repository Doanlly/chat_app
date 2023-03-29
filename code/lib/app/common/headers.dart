const String OPEN_AI_KEY =
    "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";

const String baseURL = "https://api.openai.com/v1";

String endPoint(String endPoint) => "$baseURL/$endPoint";

Map<String, String> headerBearerOption(String token) => {
      "Content-Type": "application/json",
      'Authorization': 'Bearer $token',
    };

enum ApiState { loading, success, error, notFound }
