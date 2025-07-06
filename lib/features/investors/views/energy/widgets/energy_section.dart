import 'package:flutter/material.dart';
import 'package:verdro_web/features/investors/views/energy/widgets/image_slider.dart';
import 'package:verdro_web/features/investors/models/tab_item_data.dart';
import 'package:verdro_web/features/investors/views/energy/widgets/tab_selector.dart';
import 'package:verdro_web/features/investors/views/energy/widgets/text_content.dart';

class EnergySection extends StatefulWidget {
  const EnergySection({super.key});

  @override
  State<EnergySection> createState() => _EnergySectionState();
}

class _EnergySectionState extends State<EnergySection> {
  int selectedIndex = 0;
  void updateSelectedIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  @override
  Widget build(BuildContext context) {
    final currentItem = items[selectedIndex];

    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Stack(
        children: [
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 600),
            child: SizedBox.expand(
              key: ValueKey(currentItem.image),
              child: Image.asset(currentItem.image, fit: BoxFit.cover),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.4),
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: LayoutBuilder(
              builder: (context, constraints) {
                bool isWideScreen = constraints.maxWidth >= 600;

                if (isWideScreen) {
                  return Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: TabSelector(
                          items: items,
                          selectedIndex: selectedIndex,
                          onTabSelected: updateSelectedIndex,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: TextContent(
                          energyTitle: currentItem.description[0],
                          energyDescription: currentItem.description[1],
                          researchTitle: currentItem.description[2],
                          researchDescription: currentItem.description[3],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: ImageSlider(
                          items: items,
                          selectedIndex: selectedIndex,
                          onImageSelected: updateSelectedIndex,
                        ),
                      ),
                    ],
                  );
                } else {
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        TabSelector(
                          items: items,
                          selectedIndex: selectedIndex,
                          onTabSelected: updateSelectedIndex,
                        ),
                        const SizedBox(height: 30),
                        TextContent(
                          energyTitle: currentItem.description[0],
                          energyDescription: currentItem.description[1],
                          researchTitle: currentItem.description[2],
                          researchDescription: currentItem.description[3],
                        ),
                        const SizedBox(height: 30),
                        ImageSlider(
                          items: items,
                          selectedIndex: selectedIndex,
                          onImageSelected: updateSelectedIndex,
                        ),
                      ],
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
