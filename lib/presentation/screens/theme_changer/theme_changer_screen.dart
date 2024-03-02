import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {
  static String name = 'theme_screen';
  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isDarkMode = ref.watch(darkModeProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Theme Changer'),
          actions: [
            IconButton(
                onPressed: () {
                  ref
                      .read(darkModeProvider.notifier)
                      .update((isDarkMode) => !isDarkMode);
                },
                icon: Icon(isDarkMode
                    ? Icons.dark_mode_rounded
                    : Icons.light_mode_outlined))
          ],
        ),
        body: const _ThemeChangerView());
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Color> colors = ref.watch(colorsListProvider);
    final int selectedColor = ref.watch(selectedColorProvider);

    return ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          final Color color = colors[index];
          return RadioListTile(
              title: Text(
                'Este color',
                style: TextStyle(color: color),
              ),
              subtitle: Text('${color.value}'),
              activeColor: color,
              value: index,
              groupValue: selectedColor,
              onChanged: (value) {
                ref
                    .read(selectedColorProvider.notifier)
                    .update((color) => index);
              });
        });
  }
}
