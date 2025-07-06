import 'package:flutter/material.dart';
import 'package:verdro_web/features/investors/models/tab_item_data.dart';

class ImageSlider extends StatefulWidget {
  final List<TabItemData> items;
  final int selectedIndex;
  final Function(int) onImageSelected;

  const ImageSlider({
    super.key,
    required this.items,
    required this.selectedIndex,
    required this.onImageSelected,
  });

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.9);
  }

  void _goToPrevious() {
    if (_pageController.page != null && _pageController.page! > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    }
  }

  void _goToNext() {
    if (_pageController.page != null &&
        _pageController.page! < (widget.items.length / 2)) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    List<List<int>> pageIndexes = [];
    for (int i = 0; i < widget.items.length; i += 2) {
      pageIndexes.add([i, if (i + 1 < widget.items.length) i + 1]);
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          height: 200,
          child: PageView.builder(
            controller: _pageController,
            itemCount: pageIndexes.length,
            itemBuilder: (context, index) {
              final pair = pageIndexes[index];
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: pair.map((i) {
                  final isSelected = i == widget.selectedIndex;
                  return GestureDetector(
                    onTap: () => widget.onImageSelected(i),
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      width: 150,
                      height: 200,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: isSelected ? Colors.white : Colors.white70,
                          width: isSelected ? 3 : 1,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          widget.items[i].image,
                          fit: BoxFit.cover,
                          width: 150,
                          height: 200,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              );
            },
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: _goToPrevious,
              icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.white),
            ),
            IconButton(
              onPressed: _goToNext,
              icon: Icon(
                Icons.arrow_forward_ios,
                size: 20,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
