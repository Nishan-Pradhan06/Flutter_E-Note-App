class HighlightModel {
  final String id;
  final String text;
  final String style; // 'highlight', 'underline', 'bold'
  final int color;
  final DateTime timestamp;
  final String pageId;
  final int startOffset;
  final int endOffset;

  const HighlightModel({
    required this.id,
    required this.text,
    required this.style,
    required this.color,
    required this.timestamp,
    required this.pageId,
    required this.startOffset,
    required this.endOffset,
  });

  factory HighlightModel.fromJson(Map<String, dynamic> json) {
    return HighlightModel(
      id: json['id'] as String,
      text: json['text'] as String,
      style: json['style'] as String,
      color: json['color'] as int,
      timestamp: DateTime.parse(json['timestamp'] as String),
      pageId: json['pageId'] as String,
      startOffset: json['startOffset'] as int,
      endOffset: json['endOffset'] as int,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'text': text,
    'style': style,
    'color': color,
    'timestamp': timestamp.toIso8601String(),
    'pageId': pageId,
    'startOffset': startOffset,
    'endOffset': endOffset,
  };
}
