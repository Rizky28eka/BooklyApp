import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/utils/dio_servieces.dart';
import '../models/book_model/book_model.dart';
import 'home_repo.dart';

class HomeRepositoryImpl implements HomeRepository {
  final DioServices dioServices;

  HomeRepositoryImpl({required this.dioServices});

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await dioServices.get(
          endPoints:
              "volumes?Filtering=free-ebooks&q=subject:programming&sorting=newest");
      List<BookModel> books = [];
      for (var i in data["items"]) {
        books.add(BookModel.fromJson(i));
      }
      return Right(books);
    } on Exception catch (error) {
      if (error is DioException) {
        return Left(ServerFailure.fromDioError(error));
      }
      debugPrint(" error is ${error.toString()}");
      return const Left(
          ServerFailure(errMsg: "Opps There was an Error, Please try again !"));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await dioServices.get(
          endPoints: "volumes?Filtering=free-ebooks&q=subject:programming");
      List<BookModel> books = [];
      for (var i in data["items"]) {
        books.add(BookModel.fromJson(i));
      }
      return Right(books);
    } on Exception catch (error) {
      if (error is DioException) {
        return Left(ServerFailure.fromDioError(error));
      }
      debugPrint(" error is ${error.toString()}");
      return const Left(
          ServerFailure(errMsg: "Opps There was an Error, Please try again !"));
    }
  }
}
