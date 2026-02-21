import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../models/highlight_model.dart';
import '../repositories/highlight_repository.dart';

part 'highlight_event.dart';
part 'highlight_state.dart';
part 'highlight_bloc.freezed.dart';

class HighlightBloc extends Bloc<HighlightEvent, HighlightState> {
  final HighlightRepository repository;

  HighlightBloc({required this.repository})
    : super(const HighlightState.initial()) {
    on<_Add>(_onAdd);
    on<_Delete>(_onDelete);
    on<_FetchAll>(_onFetchAll);
    on<_FetchByPage>(_onFetchByPage);
  }

  Future<void> _onAdd(_Add event, Emitter<HighlightState> emit) async {
    try {
      await repository.saveHighlight(event.highlight);
      add(const HighlightEvent.fetchAll());
    } catch (e) {
      emit(HighlightState.failure(e.toString()));
    }
  }

  Future<void> _onDelete(_Delete event, Emitter<HighlightState> emit) async {
    try {
      await repository.deleteHighlight(event.id);
      add(const HighlightEvent.fetchAll());
    } catch (e) {
      emit(HighlightState.failure(e.toString()));
    }
  }

  Future<void> _onFetchAll(
    _FetchAll event,
    Emitter<HighlightState> emit,
  ) async {
    emit(const HighlightState.loading());
    try {
      final highlights = await repository.getHighlights();
      emit(HighlightState.success(highlights));
    } catch (e) {
      emit(HighlightState.failure(e.toString()));
    }
  }

  Future<void> _onFetchByPage(
    _FetchByPage event,
    Emitter<HighlightState> emit,
  ) async {
    emit(const HighlightState.loading());
    try {
      final highlights = await repository.getHighlightsByPage(event.pageId);
      emit(HighlightState.success(highlights));
    } catch (e) {
      emit(HighlightState.failure(e.toString()));
    }
  }
}
