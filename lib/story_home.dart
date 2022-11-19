import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:short_stories/theme.dart';

class MainStoryHome extends StatelessWidget {
  const MainStoryHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: currentTheme.isDark ? Colors.white : Colors.black,
        onPressed: () {},
        label: Row(
          children: [
            Text('Dark Theme'),
            Switch.adaptive(
              value: currentTheme.isDark,
              onChanged: (val) => currentTheme.switchTheme(),
            ),
          ],
        ),
      ),
    );
  }
}
