## analyzer_segfault_repro

Reproduces https://github.com/dart-lang/sdk/issues/40809, encountered in macOS
release builds using:

```
Flutter 1.15.3 • channel dev • https://github.com/flutter/flutter.git
Framework • revision 67826bdce5 (3 weeks ago) • 2020-02-10 14:59:32 -0800
Engine • revision 6158f03ef5
Tools • Dart 2.8.0 (build 2.8.0-dev.8.0 514a8d4c84)
```

## Instructions

1. Install Flutter dev channel (v1.15.3)
1. Open `lib/main.dart`, and change `workspacePath_CHANGE_ME` to point to this
   folder
1. Run `flutter run --release`
