import 'package:e_book/utils/colors.dart';
import 'package:flutter/material.dart';

class MyDialog extends StatefulWidget {
  @override
  _MyDialogState createState() => _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  List<String> selectedSubTexts = [];

  void handleSubTextClick(String subText) {
    setState(() {
      if (selectedSubTexts.contains(subText)) {
        selectedSubTexts.remove(subText);
      } else {
        selectedSubTexts.add(subText);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      content: SingleChildScrollView(
        child: Column(
          children: [
            MyExpansionTile(
              title: const Text(
                'Novel Book',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              selectedSubTexts: selectedSubTexts,
              onSubTextClick: handleSubTextClick,
              subTexts: [
                'Book Hardcover',
                'Innovation Work',
                'Book Hardcovers'
              ],
            ),
            MyExpansionTile(
              title: const Text(
                'Bookshelf',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              selectedSubTexts: selectedSubTexts,
              onSubTextClick: handleSubTextClick,
              subTexts: ['Sub Text 4', 'Sub Text 5', 'Sub Text 6'],
            ),
            MyExpansionTile(
              title: const Text(
                'Book Writer',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              selectedSubTexts: selectedSubTexts,
              onSubTextClick: handleSubTextClick,
              subTexts: ['Sub Text 7', 'Sub Text 8', 'Sub Text 9'],
            ),
            MyExpansionTile(
              title: const Text(
                'Novel Book',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              selectedSubTexts: selectedSubTexts,
              onSubTextClick: handleSubTextClick,
              subTexts: ['Sub Text 10', 'Sub Text 11', 'Sub Text 12'],
            ),
          ],
        ),
      ),
      actions: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text(
            'Done',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}

class MyExpansionTile extends StatefulWidget {
  final Widget title;
  final List<String> selectedSubTexts;
  final Function(String) onSubTextClick;
  final List<String> subTexts;

  const MyExpansionTile({
    required this.title,
    required this.selectedSubTexts,
    required this.onSubTextClick,
    required this.subTexts,
  });

  @override
  _MyExpansionTileState createState() => _MyExpansionTileState();
}

class _MyExpansionTileState extends State<MyExpansionTile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero, // Remove default padding
          title: widget.title,
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          trailing: Icon(isExpanded ? Icons.expand_less : Icons.expand_more),
        ),
        if (isExpanded)
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 16.0), // Adjust horizontal padding
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widget.subTexts.map((subText) {
                final bool isSelected =
                    widget.selectedSubTexts.contains(subText);
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: InkWell(
                    child: Text(
                      subText,
                      style: TextStyle(
                        fontSize: 15,
                        color: isSelected ? Colors.blue : Colors.black54,
                      ),
                    ),
                    onTap: () {
                      widget.onSubTextClick(subText);
                    },
                  ),
                );
              }).toList(),
            ),
          ),
      ],
    );
  }
}
