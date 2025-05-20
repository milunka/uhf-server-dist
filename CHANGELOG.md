# UHF Server - Changelog

## 1.3.0

- The GUI for Windows and macOS now includes an option to automatically launch the server at system startup.
- Improved error reporting when starting the server in the Windows and macOS apps.
- The server now starts automatically when launching the Windows and macOS apps.
- Recordings now use the program name and date as the file name.
- Fixed a performance issue in the server that caused degraded performance when multiple recordings finished.

## 1.2.0

- The GUI for Windows and macOS now display the IP address the server is running on.
- The GUI now informs about new updates available.
- Prevented FFmpeg from opening a blank window in Windows while recording.
- Prevented machine from going idle while the server is running.
- Fixed detection of FFmpeg errors.
- Fixed error notifications.
- Improved ffmpeg retry logic.

## 1.1.0

- Fixed macOS permissions issue.
- Improved performance while recording a stream.

## 1.0.0

- Initial release.
- Configurable recordings directory, port and server password.
- GUI compatibility: macOS arm64, Windows x64.
- CLI compatibility: Linux x64, Linux arm64.
