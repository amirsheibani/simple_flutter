import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple/core/base/presentation/page/base_stateless_page.dart';
import 'package:simple/core/base/presentation/widget/custom_consumer.dart';
import 'package:simple/core/di/base/di_setup.dart';
import 'package:simple/features/animation/presentation/widgets/animation_widget.dart';
import 'package:simple/features/home/presentation/manager/test_provider/increment_provider.dart';
import 'package:simple/features/home/presentation/widgets/home_widget.dart';
import 'package:simple/features/main/presentation/manager/bottom_navigation_bar_provider.dart';
import 'package:simple/features/myip/presentation/widget/my_ip_widget.dart';
import 'package:simple/features/setting/presentation/widgets/setting_widget.dart';
import 'package:simple/features/waveform/presentation/widgets/player_widget.dart';
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
    List<BottomNavigationBarItem> bottomNavigationBarItems = [
      BottomNavigationBarItem(
        icon: const Icon(Icons.home_filled),
        activeIcon: const Icon(Icons.home_filled),
        label: S.of(context).home,
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.network_ping),
        activeIcon: const Icon(Icons.network_ping),
        label: S.of(context).my_ip,
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.play_circle_outline),
        activeIcon: const Icon(Icons.play_circle_outline),
        label: S.of(context).player,
      ),
      BottomNavigationBarItem(
          icon: const Icon(Icons.animation),
          activeIcon: const Icon(Icons.animation),
          label: S.of(context).animation),
      BottomNavigationBarItem(
          icon: const Icon(Icons.settings),
          activeIcon: const Icon(Icons.settings),
          label: S.of(context).setting),
    ];
    return Consumer<BottomNavigationBarProvider>(
      builder: (context, bottomNavigationBarProvider, child) {
        return bottomNavigationBarProvider.state.whenOrNull(
              success: (index) {
                return BottomNavigationBar(
                  currentIndex: index ?? 0,
                  selectedItemColor: Theme.of(context).primaryColor,
                  unselectedItemColor: Theme.of(context).disabledColor,
                  showSelectedLabels: true,
                  showUnselectedLabels: true,
                  items: bottomNavigationBarItems,
                  onTap: (index) {
                    context
                        .read<BottomNavigationBarProvider>()
                        .changeIndex(index: index);
                  },
                );
              },
            ) ??
            BottomNavigationBar(
              selectedItemColor: Theme.of(context).primaryColor,
              unselectedItemColor: Theme.of(context).disabledColor,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              items: bottomNavigationBarItems,
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
      const PlayerWidget(),
      const AnimationWidget(),
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
