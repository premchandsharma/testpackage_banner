import 'package:flutter/material.dart';

OverlayEntry? entryBanner;
OverlayEntry? entryClose;

// Method to show the banner with the close button
showBannerOverlay(BuildContext context, String bannerUrl) {
  // To show banner
  final overlayBanner = Overlay.of(context);

  entryBanner = OverlayEntry(
    builder: (context) => Positioned(
      right: 20,
      left: 20,
      bottom: 90,
      // width: MediaQuery.sizeOf(context).width,
      child: buildBannerOverlay(context, bannerUrl),
    ),
  );

  // To show close button
  final overlayClose = Overlay.of(context);

  overlayBanner.insert(entryBanner!);

  entryClose = OverlayEntry(
    builder: (context) => Positioned(
      right: 11,
      bottom: 162,
      child: buildCloseOverlay(),
    ),
  );

  overlayClose.insert(entryClose!);
}

// Floating banner design
Widget buildBannerOverlay(BuildContext context, String bannerUrl) => Material(
      elevation: 8,
      child: Image.network(
        fit: BoxFit.cover,
        height: MediaQuery.sizeOf(context).height * 0.1,
        bannerUrl,
      ),
    );

// Floating banner close icon design
Widget buildCloseOverlay() => GestureDetector(
      onTap: () {
        entryClose?.remove();
        entryBanner?.remove();
      },
      child: Container(
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.black,
        ),
        child: const Icon(
          Icons.close,
          color: Colors.white,
          size: 16,
        ),
      ),
    );
