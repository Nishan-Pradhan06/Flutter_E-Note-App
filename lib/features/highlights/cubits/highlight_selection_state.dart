part of 'highlight_selection_cubit.dart';

@freezed
class HighlightSelectionState with _$HighlightSelectionState {
  const factory HighlightSelectionState({
    @Default(false) bool isMenuVisible,
    int? startOffset,
    int? endOffset,
    String? selectedText,
  }) = _HighlightSelectionState;
}
