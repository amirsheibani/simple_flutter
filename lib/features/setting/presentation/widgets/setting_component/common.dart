import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple/core/base/presentation/widget/base_stateless_widget.dart';
import 'package:simple/core/config/theme/app_theme.dart';
import 'package:simple/core/service/theme_language_provider/language_theme_provider.dart';
import 'package:simple/generated/l10n.dart';

class SettingCommonSection extends BaseStatelessWidget {
  const SettingCommonSection({Key? key}) : super(key: key);



  @override
  Widget body(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Theme.of(context).paletteColorSettingSectionBackground,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).setting_common,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 16,),
          Row(
            children: [
              const Icon(
                Icons.language,
                size: 32,
              ),
              Text(
                S.of(context).setting_language,
                style: Theme.of(context).textTheme.titleSmall,
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  context.read<ThemeAndLanguageProvider>().changeLanguage();
                },
                child: Row(
                  children: [
                    Consumer<ThemeAndLanguageProvider>(
                        builder: (context, themeLanguageProvider, child) {
                          return themeLanguageProvider.state.whenOrNull(
                            success: (themeType,languageType){
                              return Text(S.of(context).language(languageType.toString()),style: Theme.of(context).textTheme.titleSmall,);
                            },
                            failed: (message){
                              return Text(message);
                            }
                          ) ?? const SizedBox();
                        },
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 24,
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 16,),
          Row(
            children: [
              const Icon(
                Icons.palette,
                size: 32,
              ),
              Text(
                S.of(context).setting_custom_theme,
                style: Theme.of(context).textTheme.titleSmall,
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  context.read<ThemeAndLanguageProvider>().changeTheme();
                },
                child: Row(
                  children: [
                    Consumer<ThemeAndLanguageProvider>(
                      builder: (context, themeLanguageProvider, child) {
                        return themeLanguageProvider.state.whenOrNull(
                            success: (themeType,languageType){
                              return Text(S.of(context).theme(themeType.toString()),style: Theme.of(context).textTheme.titleSmall,);
                            },
                            failed: (message){
                              return Text(message);
                            }
                        ) ?? const SizedBox();
                      },
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 24,
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
