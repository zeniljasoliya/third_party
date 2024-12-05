import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

class CountryPickerDemo extends StatefulWidget {
  const CountryPickerDemo({super.key});

  @override
  State<CountryPickerDemo> createState() => _CountryPickerDemoState();
}

class _CountryPickerDemoState extends State<CountryPickerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MaterialButton(
              onPressed: () {
                showCountryPicker(
                  context: context,
                  showPhoneCode: true,
                  onSelect: (value) {
                    print(value);
                  },
                );
                setState(() {});
              },
              color: Colors.blueAccent,
              child: const Text('Select Country'),
            )
          ],
        ),
      ),
    );
  }
}
