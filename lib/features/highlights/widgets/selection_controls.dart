import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class HighlightSelectionControls extends MaterialTextSelectionControls {
  final VoidCallback onHighlight;
  final VoidCallback onUnderline;
  final VoidCallback onBold;

  HighlightSelectionControls({
    required this.onHighlight,
    required this.onUnderline,
    required this.onBold,
  });

  @override
  Widget buildToolbar(
    BuildContext context,
    Rect globalEditableRegion,
    double textLineHeight,
    Offset selectionMidpoint,
    List<TextSelectionPoint> endpoints,
    TextSelectionDelegate delegate,
    ValueListenable<ClipboardStatus>? clipboardStatus,
    Offset? lastSecondaryTapDownPosition,
  ) {
    return TextSelectionToolbar(
      anchorAbove: selectionMidpoint,
      anchorBelow: selectionMidpoint,
      children: [
        IconButton(
          icon: const Icon(Icons.format_color_fill, color: Colors.blue),
          onPressed: () {
            onHighlight();
            delegate.hideToolbar();
          },
          tooltip: 'Highlight',
        ),
        IconButton(
          icon: const Icon(Icons.format_underlined, color: Colors.blue),
          onPressed: () {
            onUnderline();
            delegate.hideToolbar();
          },
          tooltip: 'Underline',
        ),
        IconButton(
          icon: const Icon(Icons.format_bold, color: Colors.blue),
          onPressed: () {
            onBold();
            delegate.hideToolbar();
          },
          tooltip: 'Bold',
        ),
        TextButton(
          onPressed: () {
            delegate.copySelection(SelectionChangedCause.toolbar);
            delegate.hideToolbar();
          },
          child: const Text('Copy', style: TextStyle(color: Colors.black)),
        ),
      ],
    );
  }
}
