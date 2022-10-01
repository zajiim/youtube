part of 'home_bloc.dart';

@freezed
class HomeDetailsState with _$HomeDetailsState {
  const factory HomeDetailsState({
    required bool isLoading,
    HomeModel? home,
    required Option<Either<MainFailure, HomeModel>> homeFailureOrSuccessOption,
  }) = _HomeDetailsState;

  factory HomeDetailsState.initial() {
    return const HomeDetailsState(
      isLoading: false,
      homeFailureOrSuccessOption: None(),
    );
  }
}
