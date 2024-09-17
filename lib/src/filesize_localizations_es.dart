import 'filesize_localizations.dart';

/// The translations for Spanish (`es`).
class FilesizeLocalizationsEs extends FilesizeLocalizations {
  FilesizeLocalizationsEs([String locale = 'es']) : super(locale);

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
