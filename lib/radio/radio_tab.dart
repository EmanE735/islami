import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/generated/l10n.dart';
import 'package:islami/settings/setting_provider.dart';
import 'package:provider/provider.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return Column(
      children: [
        Expanded(child: SizedBox()),
        Expanded(child: Image.asset("assets/images/pic_radio.png")),
        Expanded(
          child: Text(
            S.of(context).holyQuranRadio,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        Row(
          children: [
            Expanded(
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.skip_previous,
                      size: 40,
                      color: settingsProvider.isDark
                          ? AppTheme.gold
                          : AppTheme.lightprimary,
                    ))),
            Expanded(
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.play_arrow,
                      size: 40,
                      color: settingsProvider.isDark
                          ? AppTheme.gold
                          : AppTheme.lightprimary,
                    ))),
            Expanded(
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.skip_next,
                      size: 40,
                      color: settingsProvider.isDark
                          ? AppTheme.gold
                          : AppTheme.lightprimary,
                    ))),
          ],
        ),
        Expanded(child: SizedBox())
      ],
    );
  }
}
