import 'package:dio/dio.dart';

abstract class Failure implements Exception {
  final String errMsg;

  const Failure({required this.errMsg});
}

class ServerFailure extends Failure {
  const ServerFailure({required super.errMsg});
  factory ServerFailure.fromDioError(DioError dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return const ServerFailure(errMsg: "Connection timeout with ApiServer");
      case DioExceptionType.sendTimeout:
        return const ServerFailure(errMsg: "Send timeout with ApiServer");
      case DioExceptionType.receiveTimeout:
        return const ServerFailure(errMsg: "Receive timeout with ApiServer");
      case DioExceptionType.badCertificate:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return const ServerFailure(errMsg: "Request to ApiServer was canceled");
      case DioExceptionType.connectionError:
        return const ServerFailure(errMsg: "Check your internet connection");
      case DioExceptionType.unknown:
        if (dioException.message!.contains("SocketException")) {
          return const ServerFailure(errMsg: "No internet connection");
        }
        return const ServerFailure(
            errMsg: "Unexpected Error, Please try again !");
      default:
        return const ServerFailure(
            errMsg: "Opps There was an Error, Please try again !");
    }
  }
  factory ServerFailure.fromResponse(
      int statusCode, Map<String, dynamic> response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errMsg: response["error"]["messege"]);
    } else if (statusCode == 404) {
      return const ServerFailure(
          errMsg: "Your request not found, Please try again later");
    } else if (statusCode == 500) {
      return const ServerFailure(
          errMsg: "Internal server error, Please try later");
    } else {
      return ServerFailure(errMsg: "Error with status code ${statusCode}");
    }
  }
}
