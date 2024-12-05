import 'package:permission_handler/permission_handler.dart';

void camerapermission() async {
  var status = await Permission.camera.status;

  if (!status.isGranted) {
    await Permission.camera.request();
  }
}

void locationpermission() async {
  var status = await Permission.location.status;

  if (!status.isGranted) {
    await Permission.location.request();
  }
}
