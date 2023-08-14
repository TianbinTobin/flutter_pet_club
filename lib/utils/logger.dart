import 'package:logger/logger.dart';

final logger = Logger(
  printer: PrettyPrinter(methodCount: 0, printTime: true),
);

final loggerWithStack = Logger(
  printer: PrettyPrinter(),
);
