import 'package:file_picker/file_picker.dart';
import 'package:filepicker_windows/filepicker_windows.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:path_provider/path_provider.dart';
import 'component/commonComponent.dart';

class ChooseDirScreen extends HookWidget {
  const ChooseDirScreen();

  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(
      builder: (_) => const ChooseDirScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final commonComponent = CommonComponent();
    return commonComponent.getScreenOutline(
      context,
      SizedBox(
        width: MediaQuery.of(context).size.width / 2,
        child: ElevatedButton(
          onPressed: () async {
            final dir = DirectoryPicker().getDirectory();

            if (dir != null) {
              debugPrint('${dir.path}');
            }
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
          ),
          child: Text(
            'hey,,,,,',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
