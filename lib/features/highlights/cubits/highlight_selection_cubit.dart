import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'highlight_selection_state.dart';
part 'highlight_selection_cubit.freezed.dart';

class HighlightSelectionCubit extends Cubit<HighlightSelectionState> {
  HighlightSelectionCubit() : super(const HighlightSelectionState());

  void updateSelection({int? start, int? end, String? text}) {
    emit(
      state.copyWith(
        startOffset: start,
        endOffset: end,
        selectedText: text,
        isMenuVisible: text != null && text.isNotEmpty,
      ),
    );
  }

  void clearSelection() {
    emit(const HighlightSelectionState());
  }
}
