import 'package:cupertino_picker/util.dart';
import 'package:cupertino_picker/widgets/date_picker.dart';
import 'package:cupertino_picker/widgets/handle_picker_button.dart';
import 'package:cupertino_picker/widgets/toggle_date_picker_button.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  Future<void> showPicker(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: getHeightByPercentOfScreen(33.0, context),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: HandlePickerButton(),
              ),
              Expanded(
                flex: 7,
                child: CuDatePicker(),
              )
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('ko', 'KO'),
        const Locale('en', 'US'),
      ],
      home: Scaffold(
        appBar: AppBar(
          brightness: Brightness.light,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text(
            'Cupertino Date Picker',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: ToggleDatePicker(
                  showPicker: showPicker,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
