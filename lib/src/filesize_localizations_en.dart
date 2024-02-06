import 'filesize_localizations.dart';

/// The translations for English (`en`).
class FilesizeLocalizationsEn extends FilesizeLocalizations {
  /// Create an instance of the translation bundle for English.
  FilesizeLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get bytes => 'B';

  @override
  String get kilobytes => 'KB';

  @override
  String get megabytes => 'MB';

  @override
  String get gigabytes => 'GB';

  @override
  String get terabytes => 'TB';

  @override
  String get petabytes => 'PB';
}
