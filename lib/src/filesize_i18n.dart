import 'dart:math';

import 'package:flutter/widgets.dart';

import 'filesize_localizations.dart';

/// A method returns a human readable string representing a file _size
String filesize(BuildContext context, dynamic size, [int round = 2]) {
  /** 
   * [size] can be passed as number or as string
   *
   * the optional parameter [round] specifies the number 
   * of digits after comma/point (default is 2)
   */
  var divider = 1024;
  int _size;
  try {
    _size = int.parse(size.toString());
  } catch (e) {
    throw ArgumentError('Can not parse the size parameter: $e');
  }

  final bytes = FilesizeLocalizations.of(context)!.bytes;
  final kilobytes = FilesizeLocalizations.of(context)!.kilobytes;
  final megabytes = FilesizeLocalizations.of(context)!.megabytes;
  final gigabytes = FilesizeLocalizations.of(context)!.gigabytes;
  final terabytes = FilesizeLocalizations.of(context)!.terabytes;
  final petabytes = FilesizeLocalizations.of(context)!.petabytes;

  if (_size < divider) {
    return '$_size $bytes';
  }

  if (_size < pow(divider, 2) && _size % divider == 0) {
    return '${(_size / divider).toStringAsFixed(0)} $kilobytes';
  }

  if (_size < pow(divider, 2)) {
    return '${(_size / divider).toStringAsFixed(round)} $kilobytes';
  }

  if (_size < pow(divider, 3) && _size % divider == 0) {
    return '${(_size / pow(divider, 2)).toStringAsFixed(0)} $megabytes';
  }

  if (_size < pow(divider, 3)) {
    return '${(_size / pow(divider, 2)).toStringAsFixed(round)} $megabytes';
  }

  if (_size < pow(divider, 4) && _size % divider == 0) {
    return '${(_size / pow(divider, 3)).toStringAsFixed(0)} $gigabytes';
  }

  if (_size < pow(divider, 4)) {
    return '${(_size / pow(divider, 3)).toStringAsFixed(round)} $gigabytes';
  }

  if (_size < pow(divider, 5) && _size % divider == 0) {
    num r = _size / pow(divider, 4);
    return '${r.toStringAsFixed(0)} $terabytes';
  }

  if (_size < pow(divider, 5)) {
    num r = _size / pow(divider, 4);
    return '${r.toStringAsFixed(round)} $terabytes';
  }

  if (_size < pow(divider, 6) && _size % divider == 0) {
    num r = _size / pow(divider, 5);
    return '${r.toStringAsFixed(0)} $petabytes';
  } else {
    num r = _size / pow(divider, 5);
    return '${r.toStringAsFixed(round)} $petabytes';
  }
}
