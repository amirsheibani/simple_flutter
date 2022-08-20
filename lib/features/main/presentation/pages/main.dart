import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple/core/base/presentation/page/base_stateless_page.dart';
import 'package:simple/core/base/presentation/widget/custom_consumer.dart';
import 'package:simple/core/di/base/di_setup.dart';
import 'package:simple/features/home/presentation/manager/test_provider/increment_provider.dart';
import 'package:simple/features/home/presentation/widgets/home_widget.dart';
import 'package:simple/features/main/presentation/manager/bottom_navigation_bar_provider.dart';
import 'package:simple/features/myip/presentation/widget/my_ip_widget.dart';
import 'package:simple/features/setting/presentation/widgets/setting_widget.dart';
import 'package:simple/generated/l10n.dart';

class MainPage extends BaseStatelessPage {
  const MainPage({Key? key}) : super(key: key);

  @override
  List setProviders(BuildContext context) {
    return [
      ChangeNotifierProvider(
        create: (context) {
          final provider = getIt<BottomNavigationBarProvider>();
          provider.changeIndex(index: 0);
          return provider;
        },
      ),
      ChangeNotifierProvider(create: (context) => getIt<IncrementProvider>()),
    ];
  }

  @override
  Widget? bottomNavigationBar(BuildContext context) {
    return Consumer<BottomNavigationBarProvider>(
      builder: (context, bottomNavigationBarProvider, child) {
        return BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: const Icon(Icons.home_filled),
              label: S.of(context).home,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.network_ping),
              label: S.of(context).my_ip,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.settings),
              label: S.of(context).setting,
            ),
          ],
          onTap: (index) {
            context
                .read<BottomNavigationBarProvider>()
                .changeIndex(index: index);
          },
        );
      },
    );
  }

  @override
  Widget body(BuildContext context) {
    final List<Widget> pages = [
      const HomeWidget(),
      const MyIpWidget(),
      const SettingWidget(),
    ];
    return CustomConsumer<BottomNavigationBarProvider>(
      // listener: (context, bottomNavigationBarProvider) {
      //   print(bottomNavigationBarProvider.state);
      // },
      builder: (context, bottomNavigationBarProvider, child) {
        return bottomNavigationBarProvider.state.whenOrNull(
              success: (index) => pages[index ?? 0],
            ) ??
            const SizedBox();
      },
    );
  }
}
