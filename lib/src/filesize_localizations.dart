
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'filesize_localizations_en.dart';
import 'filesize_localizations_fr.dart';

/// Callers can lookup localized strings with an instance of FilesizeLocalizations returned
/// by `FilesizeLocalizations.of(context)`.
///
/// Applications need to include `FilesizeLocalizations.delegate()` in their app's
/// localizationDelegates list, and the locales they support in the app's
/// supportedLocales list. For example:
///
/// ```
/// import 'src/filesize_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: FilesizeLocalizations.localizationsDelegates,
///   supportedLocales: FilesizeLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the FilesizeLocalizations.supportedLocales
/// property.
abstract class FilesizeLocalizations {
  FilesizeLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static FilesizeLocalizations? of(BuildContext context) {
    return Localizations.of<FilesizeLocalizations>(context, FilesizeLocalizations);
  }

  static const LocalizationsDelegate<FilesizeLocalizations> delegate = _FilesizeLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('fr')
  ];

  /// Byte abbreviation
  ///
  /// In en, this message translates to:
  /// **'B'**
  String get bytes;

  /// Kilobyte abbreviation
  ///
  /// In en, this message translates to:
  /// **'KB'**
  String get kilobytes;

  /// Megabyte abbreviation
  ///
  /// In en, this message translates to:
  /// **'MB'**
  String get megabytes;

  /// Gigabyte abbreviation
  ///
  /// In en, this message translates to:
  /// **'GB'**
  String get gigabytes;

  /// Terabyte abbreviation
  ///
  /// In en, this message translates to:
  /// **'TB'**
  String get terabytes;

  /// Petabyte abbreviation
  ///
  /// In en, this message translates to:
  /// **'PB'**
  String get petabytes;
}

class _FilesizeLocalizationsDelegate extends LocalizationsDelegate<FilesizeLocalizations> {
  const _FilesizeLocalizationsDelegate();

  @override
  Future<FilesizeLocalizations> load(Locale locale) {
    return SynchronousFuture<FilesizeLocalizations>(lookupFilesizeLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'fr'].contains(locale.languageCode);

  @override
  bool shouldReload(_FilesizeLocalizationsDelegate old) => false;
}

FilesizeLocalizations lookupFilesizeLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return FilesizeLocalizationsEn();
    case 'fr': return FilesizeLocalizationsFr();
  }

  throw FlutterError(
    'FilesizeLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
