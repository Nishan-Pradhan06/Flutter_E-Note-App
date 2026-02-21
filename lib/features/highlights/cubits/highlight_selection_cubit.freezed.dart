// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'highlight_selection_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HighlightSelectionState {
  bool get isMenuVisible => throw _privateConstructorUsedError;
  int? get startOffset => throw _privateConstructorUsedError;
  int? get endOffset => throw _privateConstructorUsedError;
  String? get selectedText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HighlightSelectionStateCopyWith<HighlightSelectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HighlightSelectionStateCopyWith<$Res> {
  factory $HighlightSelectionStateCopyWith(HighlightSelectionState value,
          $Res Function(HighlightSelectionState) then) =
      _$HighlightSelectionStateCopyWithImpl<$Res, HighlightSelectionState>;
  @useResult
  $Res call(
      {bool isMenuVisible,
      int? startOffset,
      int? endOffset,
      String? selectedText});
}

/// @nodoc
class _$HighlightSelectionStateCopyWithImpl<$Res,
        $Val extends HighlightSelectionState>
    implements $HighlightSelectionStateCopyWith<$Res> {
  _$HighlightSelectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMenuVisible = null,
    Object? startOffset = freezed,
    Object? endOffset = freezed,
    Object? selectedText = freezed,
  }) {
    return _then(_value.copyWith(
      isMenuVisible: null == isMenuVisible
          ? _value.isMenuVisible
          : isMenuVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      startOffset: freezed == startOffset
          ? _value.startOffset
          : startOffset // ignore: cast_nullable_to_non_nullable
              as int?,
      endOffset: freezed == endOffset
          ? _value.endOffset
          : endOffset // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedText: freezed == selectedText
          ? _value.selectedText
          : selectedText // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HighlightSelectionStateImplCopyWith<$Res>
    implements $HighlightSelectionStateCopyWith<$Res> {
  factory _$$HighlightSelectionStateImplCopyWith(
          _$HighlightSelectionStateImpl value,
          $Res Function(_$HighlightSelectionStateImpl) then) =
      __$$HighlightSelectionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isMenuVisible,
      int? startOffset,
      int? endOffset,
      String? selectedText});
}

/// @nodoc
class __$$HighlightSelectionStateImplCopyWithImpl<$Res>
    extends _$HighlightSelectionStateCopyWithImpl<$Res,
        _$HighlightSelectionStateImpl>
    implements _$$HighlightSelectionStateImplCopyWith<$Res> {
  __$$HighlightSelectionStateImplCopyWithImpl(
      _$HighlightSelectionStateImpl _value,
      $Res Function(_$HighlightSelectionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMenuVisible = null,
    Object? startOffset = freezed,
    Object? endOffset = freezed,
    Object? selectedText = freezed,
  }) {
    return _then(_$HighlightSelectionStateImpl(
      isMenuVisible: null == isMenuVisible
          ? _value.isMenuVisible
          : isMenuVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      startOffset: freezed == startOffset
          ? _value.startOffset
          : startOffset // ignore: cast_nullable_to_non_nullable
              as int?,
      endOffset: freezed == endOffset
          ? _value.endOffset
          : endOffset // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedText: freezed == selectedText
          ? _value.selectedText
          : selectedText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$HighlightSelectionStateImpl implements _HighlightSelectionState {
  const _$HighlightSelectionStateImpl(
      {this.isMenuVisible = false,
      this.startOffset,
      this.endOffset,
      this.selectedText});

  @override
  @JsonKey()
  final bool isMenuVisible;
  @override
  final int? startOffset;
  @override
  final int? endOffset;
  @override
  final String? selectedText;

  @override
  String toString() {
    return 'HighlightSelectionState(isMenuVisible: $isMenuVisible, startOffset: $startOffset, endOffset: $endOffset, selectedText: $selectedText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HighlightSelectionStateImpl &&
            (identical(other.isMenuVisible, isMenuVisible) ||
                other.isMenuVisible == isMenuVisible) &&
            (identical(other.startOffset, startOffset) ||
                other.startOffset == startOffset) &&
            (identical(other.endOffset, endOffset) ||
                other.endOffset == endOffset) &&
            (identical(other.selectedText, selectedText) ||
                other.selectedText == selectedText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isMenuVisible, startOffset, endOffset, selectedText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HighlightSelectionStateImplCopyWith<_$HighlightSelectionStateImpl>
      get copyWith => __$$HighlightSelectionStateImplCopyWithImpl<
          _$HighlightSelectionStateImpl>(this, _$identity);
}

abstract class _HighlightSelectionState implements HighlightSelectionState {
  const factory _HighlightSelectionState(
      {final bool isMenuVisible,
      final int? startOffset,
      final int? endOffset,
      final String? selectedText}) = _$HighlightSelectionStateImpl;

  @override
  bool get isMenuVisible;
  @override
  int? get startOffset;
  @override
  int? get endOffset;
  @override
  String? get selectedText;
  @override
  @JsonKey(ignore: true)
  _$$HighlightSelectionStateImplCopyWith<_$HighlightSelectionStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
