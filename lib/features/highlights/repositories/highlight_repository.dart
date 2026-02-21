import 'package:hive_flutter/hive_flutter.dart';
import '../models/highlight_model.dart';

abstract class HighlightRepository {
  Future<void> saveHighlight(HighlightModel highlight);
  Future<List<HighlightModel>> getHighlights();
  Future<List<HighlightModel>> getHighlightsByPage(String pageId);
  Future<void> deleteHighlight(String id);
}

class HighlightRepositoryImpl implements HighlightRepository {
  static const String _boxName = 'highlights_box';

  Future<Box> _getBox() async {
    return await Hive.openBox(_boxName);
  }

  @override
  Future<void> saveHighlight(HighlightModel highlight) async {
    final box = await _getBox();
    await box.put(highlight.id, highlight.toJson());
  }

  @override
  Future<List<HighlightModel>> getHighlights() async {
    final box = await _getBox();
    return box.values
        .map((e) => HighlightModel.fromJson(Map<String, dynamic>.from(e)))
        .toList();
  }

  @override
  Future<List<HighlightModel>> getHighlightsByPage(String pageId) async {
    final all = await getHighlights();
    return all.where((h) => h.pageId == pageId).toList();
  }

  @override
  Future<void> deleteHighlight(String id) async {
    final box = await _getBox();
    await box.delete(id);
  }
}
