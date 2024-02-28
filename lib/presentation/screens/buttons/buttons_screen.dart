import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
            const ElevatedButton(
                onPressed: null, child: Text('Elevated disabled')),
            ElevatedButton.icon(
              onPressed: () {},
              label: const Text('Elevated Icon'),
              icon: const Icon(Icons.alarm_add_rounded),
            ),
            FilledButton(onPressed: () {}, child: const Text('Filled')),
            FilledButton.icon(
              onPressed: () {},
              label: const Text('Filled icon'),
              icon: const Icon(Icons.accessibility_outlined),
            ),
            OutlinedButton(onPressed: () {}, child: const Text('Outline')),
            OutlinedButton.icon(
              onPressed: () {},
              label: const Text('Outline'),
              icon: const Icon(Icons.snapchat_outlined),
            ),
            TextButton(onPressed: () {}, child: const Text('Text')),
            TextButton.icon(
              onPressed: () {},
              label: const Text('Text'),
              icon: const Icon(Icons.terminal),
            ),
            const CustomButton(),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.stacked_bar_chart)),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.stacked_bar_chart),
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(colors.primary),
                  iconColor: const MaterialStatePropertyAll(Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding:
                EdgeInsetsDirectional.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              'Custom',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
