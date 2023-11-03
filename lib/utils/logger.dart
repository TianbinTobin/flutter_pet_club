import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pet_club/common/values/values.dart';

class CustomFileOutput extends LogOutput {
  CustomFileOutput({
    required this.file,
    this.overrideExisting = false,
    this.encoding = utf8,
  });

  final File file;
  final bool overrideExisting;
  final Encoding encoding;
  IOSink? _sink;

  @override
  Future<void> init() async {
    _sink = file.openWrite(
      mode: overrideExisting ? FileMode.writeOnly : FileMode.writeOnlyAppend,
      encoding: encoding,
    );
  }

  @override
  void output(OutputEvent event) {
    _sink?.writeAll(event.lines, '\n');
    _sink?.writeln();
  }

  @override
  Future<void> destroy() async {
    await _sink?.flush();
    await _sink?.close();
  }
}

class CustomLogFilter extends LogFilter {
  @override
  Level? get level => Level.trace;

  /// The minimal level allowed in production.
  static const Level _minimalLevel = Level.info;

  @override
  bool shouldLog(LogEvent event) {
    bool shouldLog = false;

    if (event.level.index >= _minimalLevel.index) {
      return true;
    }

    assert(
      () {
        if (event.level.index >= level!.index) {
          shouldLog = true;
        }
        return true;
      }(),
      '',
    );

    return shouldLog;
  }
}

class LogUtil {
  static LogPrinter get logPrinter => kReleaseMode
      ? SimplePrinter(colors: false)
      : PrettyPrinter(
          methodCount: 0,
          colors: false,
        );

  static LogOutput logOutput(File outputFile) => MultiOutput(
        <LogOutput>[
          ConsoleOutput(),
          CustomFileOutput(
            file: outputFile,
            overrideExisting: true,
          ),
        ],
      );

  static Future<File> initLogFile() async {
    final Directory tempDir = await getTemporaryDirectory();
    final File logFile = File('${tempDir.path}/${NameConstants.logFilename}');
    if (logFile.existsSync()) {
      await logFile
          .rename('${tempDir.path}/${NameConstants.previousLogFileName}');
    }
    return logFile;
  }
}
