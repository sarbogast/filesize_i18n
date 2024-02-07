import 'filesize_localizations.dart';

/// The translations for Swedish (`sv`).
class FilesizeLocalizationsSv extends FilesizeLocalizations {
  FilesizeLocalizationsSv([String locale = 'sv']) : super(locale);

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
