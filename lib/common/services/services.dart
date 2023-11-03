import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:pet_club/utils/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'system_service.dart';
part 'storage_service.dart';

final GetIt services = GetIt.instance;

Future<void> setupServices() async {
  final File logOutputFile = await LogUtil.initLogFile();

  services
    ..registerSingleton<Logger>(Logger(
        filter: CustomLogFilter(),
        printer: LogUtil.logPrinter,
        output: LogUtil.logOutput(logOutputFile)))
    ..registerSingleton<SystemService>(SystemService())
    ..registerSingleton<StorageService>(StorageService());
}
