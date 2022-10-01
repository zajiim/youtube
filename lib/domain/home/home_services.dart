import 'package:dartz/dartz.dart';
import 'package:youtube_clone/domain/core/failures/main_failure.dart';
import 'package:youtube_clone/domain/home/models/home.dart';

abstract class HomeService {
  Future<Either<MainFailure, HomeModel>> getHomeDetails();
}
