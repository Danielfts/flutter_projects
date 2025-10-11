import 'package:flutter/material.dart';
import 'package:meals/screens/main_drawer.dart';
import 'package:meals/screens/tabs.dart';

class Filters extends StatefulWidget {
  const Filters({super.key});

  @override
  State<Filters> createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  var _gluttenFreeFilterSet = false;
  var _lactoseFreeFilterSet = false;
  var _vegetarianFilterSet = false;
  var _veganFilterSet = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your filters'),
      ),
      // drawer: MainDrawer(
      //   onSelectScreen: (identifier) {
      //     Navigator.of(context).pop();
      //     if (identifier == 'meals') {
      //       Navigator.of(
      //         context,
      //       ).push(MaterialPageRoute(builder: (_) => Tabs()));
      //     }
      //   },
      // ),
      body: Column(
        children: [
          styledSwitchTile(
            'Glutten Free',
            'Only include glutten free meals',
            (
              bool value,
            ) {
              _gluttenFreeFilterSet = value;
            },
            _gluttenFreeFilterSet,
          ),
          styledSwitchTile(
            'Lactose free',
            'Only include lactose free meals',
            (
              bool value,
            ) {
              _lactoseFreeFilterSet = value;
            },
            _lactoseFreeFilterSet,
          ),
          styledSwitchTile('Vegetarian', 'Only include vegetarian meals', (
            bool value,
          ) {
            _vegetarianFilterSet = value;
          }, _vegetarianFilterSet),
          styledSwitchTile('Vegan', 'Only include vegan meals', (
            bool value,
          ) {
            _veganFilterSet = value;
          }, _veganFilterSet),
        ],
      ),
    );
  }

  SwitchListTile styledSwitchTile(
    String title,
    String subtitle,
    void Function(bool v) onSwitch,
    bool value,
  ) {
    var theme = Theme.of(context);
    return SwitchListTile(
      value: value,
      onChanged: (isChecked) {
        setState(() {
          // _gluttenFreeFilterSet = isChecked;
          onSwitch(isChecked);
        });
      },
      title: Text(
        title,
        style: theme.textTheme.titleLarge!.copyWith(
          color: theme.colorScheme.onSurface,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: theme.textTheme.labelMedium!.copyWith(
          color: theme.colorScheme.onSurface,
        ),
      ),
      activeColor: theme.colorScheme.tertiary,
      contentPadding: const EdgeInsets.only(left: 34, right: 22),
    );
  }
}
