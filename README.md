<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

Create a simple overlay banner using an image link.

## Features

You can create a simple overlay banner at the bottom of the screen.

## Getting started

Import the package from pub.dev

## Usage

Create a variable with the banner url and then call the showBannerOverlay method with the parameters context and the banner Url.

```dart
import 'package:flutter/material.dart';

final String bannerUrl =
      'https://www.firstsouth.com/files/firstsou19/1/image/Website%20Header%20Images/051823_FS_WebHeaderImage-CDIRA.jpg.webp';

@override
  void initState() {
    WidgetsBinding.instance
        .addPostFrameCallback((_) => showBannerOverlay(context, bannerUrl));
  }
```
