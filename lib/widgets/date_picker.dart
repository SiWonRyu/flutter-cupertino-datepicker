import 'package:flutter/cupertino.dart';

class CuDatePicker extends StatelessWidget {
  const CuDatePicker({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoDatePicker(
      initialDateTime: DateTime.now(),
      maximumDate: DateTime.now(),
      minimumYear: 2018,
      maximumYear: 2020,
      mode: CupertinoDatePickerMode.date,
      onDateTimeChanged: (DateTime value) {},
    );
  }
}
