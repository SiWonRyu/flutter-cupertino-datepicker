import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HandlePickerButton extends StatelessWidget {
  const HandlePickerButton({
    Key key,
    this.onPressCancel,
    this.onPressDone,
  }) : super(key: key);

  final Function onPressCancel;
  final Function onPressDone;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CupertinoButton(
          child: Text(
            'Cancel',
            style: TextStyle(
              color: Colors.red,
            ),
          ),
          onPressed: onPressCancel ??
              () {
                Navigator.pop(context);
              },
        ),
        CupertinoButton(
          child: Text(
            'Done',
          ),
          onPressed: onPressCancel ??
              () {
                Navigator.pop(context);
              },
        ),
      ],
    );
  }
}
