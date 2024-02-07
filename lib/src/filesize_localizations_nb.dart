import 'filesize_localizations.dart';

/// The translations for Norwegian Bokmål (`nb`).
class FilesizeLocalizationsNb extends FilesizeLocalizations {
  FilesizeLocalizationsNb([String locale = 'nb']) : super(locale);

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
