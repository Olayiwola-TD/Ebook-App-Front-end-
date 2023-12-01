import 'package:flutter/material.dart';

class NicknameDialog extends StatelessWidget {
  final TextEditingController _nicknameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Enter a Nickname',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Your nickname will be displayed next to any reviews you write',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            TextField(
              controller: _nicknameController,
              decoration: InputDecoration(
                hintText: 'Enter your nickname',
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    // Handle Cancel button press
                    Navigator.pop(context);
                  },
                  child: Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    // Handle Okay button press
                    String nickname = _nicknameController.text;
                    // Do something with the entered nickname
                    Navigator.pop(context);
                  },
                  child: Text('Okay'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
