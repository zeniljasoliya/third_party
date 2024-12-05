import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class AweSomeDialogDemo extends StatefulWidget {
  const AweSomeDialogDemo({super.key});

  @override
  State<AweSomeDialogDemo> createState() => _AweSomeDialogDemoState();
}

class _AweSomeDialogDemoState extends State<AweSomeDialogDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              MaterialButton(
                onPressed: () {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.info,
                    borderSide: const BorderSide(color: Colors.green, width: 2),
                    buttonsBorderRadius:
                        const BorderRadius.all(Radius.circular(2)),
                    headerAnimationLoop: false,
                    animType: AnimType.rightSlide,
                    title: 'INFO',
                    desc: 'Dialog description here...',
                    showCloseIcon: true,
                    btnCancelOnPress: () {},
                    btnOkOnPress: () {},
                  ).show();
                },
                color: Colors.blueAccent,
                child: const Text('Info dialog'),
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: () {
                  AwesomeDialog(
                          context: context,
                          dialogType: DialogType.error,
                          animType: AnimType.rightSlide,
                          headerAnimationLoop: false,
                          title: 'Error',
                          desc: 'Dialog description here',
                          btnOkOnPress: () {},
                          btnOkIcon: Icons.cancel,
                          btnOkColor: Colors.red)
                      .show();
                },
                color: Colors.blueGrey,
                child: const Text('Error Dialog'),
              )
            ],
          ),
        ),
      )),
    );
  }
}
