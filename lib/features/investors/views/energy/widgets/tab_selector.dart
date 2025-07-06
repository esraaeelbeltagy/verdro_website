import 'package:flutter/material.dart';
import 'package:verdro_web/core/utils/app_styles.dart';
import 'package:verdro_web/features/investors/models/tab_item_data.dart';

class TabSelector extends StatelessWidget {
  final List<TabItemData> items;
  final int selectedIndex;
  final Function(int) onTabSelected;

  const TabSelector({
    super.key,
    required this.items,
    required this.selectedIndex,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(items.length, (index) {
        final isSelected = index == selectedIndex;
        return GestureDetector(
          onTap: () => onTabSelected(index),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      items[index].title,
                      style: AppStyles.styleRegular40White(context).copyWith(
                        fontSize: isSelected ? 30 : 25,
                        fontWeight: isSelected
                            ? FontWeight.w300
                            : FontWeight.normal,
                        color: isSelected ? Colors.white : Colors.white70,
                      ),
                    ),
                  ),
                  if (isSelected)
                    RotatedBox(
                      quarterTurns: 3,
                      child: Container(
                        margin: const EdgeInsets.only(top: 4),
                        height: 1,
                        width: 30,
                        color: Colors.white70,
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
