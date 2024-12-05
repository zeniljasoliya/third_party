import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class SharePlusDemo extends StatefulWidget {
  const SharePlusDemo({super.key});

  @override
  State<SharePlusDemo> createState() => _SharePlusDemoState();
}

class _SharePlusDemoState extends State<SharePlusDemo> {
  String text = '';
  String link = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Share Data'),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Text:',
                    hintText: 'Enter anything to share',
                  ),
                  maxLines: 2,
                  onChanged: (String value) => setState(() {
                    text = value;
                  }),
                ),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Subject:',
                    hintText: 'Enter subject to share',
                  ),
                  maxLines: 2,
                  onChanged: (String value) => setState(() {
                    link = value;
                  }),
                ),
                const Padding(padding: EdgeInsets.only(top: 12.0)),
                Builder(
                  builder: (BuildContext context) {
                    return MaterialButton(
                      onPressed: text.isEmpty ? null : () => _onShare(context),
                      color: Colors.green,
                      child: const Text('Share'),
                    );
                  },
                ),
              ],
            ),
          ),
        ));
  }

  void _onShare(BuildContext context) async {
    final box = context.findRenderObject() as RenderBox?;
    await Share.share(text,
        subject: link,
        sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size);
  }
}
