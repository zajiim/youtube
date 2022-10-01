import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youtube_clone/domain/home/home_services.dart';

import '../../domain/core/failures/main_failure.dart';
import '../../domain/home/models/home.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeDetailsState> {
  final HomeService _homeService;
  HomeBloc(this._homeService) : super(HomeDetailsState.initial()) {
    on<_GetHomeDetails>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          homeFailureOrSuccessOption: none(),
        ),
      );
      final Either<MainFailure, HomeModel> homeOption =
          await _homeService.getHomeDetails();
      log(homeOption.toString());
      emit(
        homeOption.fold(
          (failure) => state.copyWith(
            isLoading: false,
            homeFailureOrSuccessOption: Some(
              Left(failure),
            ),
          ),
          (success) => state.copyWith(
            isLoading: false,
            home: success,
            homeFailureOrSuccessOption: Some(
              Right(success),
            ),
          ),
        ),
      );
    });
  }
}
