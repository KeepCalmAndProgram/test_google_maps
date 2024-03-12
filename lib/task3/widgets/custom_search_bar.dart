import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_google_maps/task3/providers/theme_provider.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({Key? key}) : super(key: key);

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: SearchAnchor(
          builder: (BuildContext context, SearchController controller) {
            return SearchBar(
              controller: controller,
              onTap: () {
                controller.openView();
              },
              onChanged: (_) {
                controller.openView();
              },
              leading: const Icon(Icons.fmd_good_rounded),
              trailing: <Widget>[
                Tooltip(
                  message: 'Change brightness mode',
                  child: IconButton(
                    isSelected: context.watch<ThemeProvider>().isDark,
                    onPressed: context.read<ThemeProvider>().changeTheme,
                    icon: const Icon(Icons.wb_sunny_outlined),
                    selectedIcon: const Icon(Icons.brightness_2_outlined),
                  ),
                ),
              ],
            );
          },
          suggestionsBuilder:
              (BuildContext context, SearchController controller) {
            return List<ListTile>.generate(
              5,
              (int index) {
                final String item = 'item $index';
                return ListTile(
                  title: Text(item),
                  onTap: () {
                    setState(
                      () {
                        controller.closeView(item);
                      },
                    );
                  },
                );
              },
            );
          },
        ),
      );
  }
}
