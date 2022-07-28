


import 'filesize_localizations.dart';

/// The translations for French (`fr`).
class FilesizeLocalizationsFr extends FilesizeLocalizations {
  FilesizeLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get bytes => 'o';

  @override
  String get kilobytes => 'Ko';

  @override
  String get megabytes => 'Mo';

  @override
  String get gigabytes => 'Go';

  @override
  String get terabytes => 'To';

  @override
  String get petabytes => 'Po';
}
