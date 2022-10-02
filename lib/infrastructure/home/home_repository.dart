import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:youtube_clone/domain/core/api_end_points.dart';
import 'package:youtube_clone/domain/core/failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:youtube_clone/domain/home/home_services.dart';

import '../../domain/home/models/home/home.dart';

@LazySingleton(as: HomeService)
class HomeRepository implements HomeService {
  @override
  Future<Either<MainFailure, HomeModel>> getHomeDetails() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.homeUrl);

      if (response.statusCode == 200 || response.statusCode == 201) {
        // log(response.data['items'].toString());
        final homeDetailsResult = HomeModel.fromJson(response.data);

        return Right(homeDetailsResult);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
