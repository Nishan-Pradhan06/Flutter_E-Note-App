part of 'highlight_bloc.dart';

@freezed
class HighlightEvent with _$HighlightEvent {
  const factory HighlightEvent.add(HighlightModel highlight) = _Add;
  const factory HighlightEvent.delete(String id) = _Delete;
  const factory HighlightEvent.fetchAll() = _FetchAll;
  const factory HighlightEvent.fetchByPage(String pageId) = _FetchByPage;
}
