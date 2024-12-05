import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedNetworkImageDemo extends StatefulWidget {
  const CachedNetworkImageDemo({super.key});

  @override
  State<CachedNetworkImageDemo> createState() => _CachedNetworkImageDemoState();
}

class _CachedNetworkImageDemoState extends State<CachedNetworkImageDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            CachedNetworkImage(
              imageUrl:
                  'https://pixabay.com/photos/tree-sunset-clouds-sky-silhouette-736885/',
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            const SizedBox(
              height: 20,
            ),
            CachedNetworkImage(
              imageUrl: "http://via.placeholder.com/350x150",
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  CircularProgressIndicator(value: downloadProgress.progress),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ],
        ),
      ),
    );
  }
}
