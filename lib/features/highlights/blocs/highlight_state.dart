part of 'highlight_bloc.dart';

@freezed
class HighlightState with _$HighlightState {
  const factory HighlightState.initial() = _Initial;
  const factory HighlightState.loading() = _Loading;
  const factory HighlightState.success(List<HighlightModel> highlights) =
      _Success;
  const factory HighlightState.failure(String message) = _Failure;
}
