import 'package:flutter/widgets.dart';
import 'package:my_daily_tasks/l10n/arb/app_localizations.dart';

extension AppLocalizationsX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}
