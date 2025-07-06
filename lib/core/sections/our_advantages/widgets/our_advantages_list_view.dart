import 'package:flutter/material.dart';
import 'package:verdro_web/core/models/our_advantages_model.dart';
import 'package:verdro_web/core/sections/our_advantages/widgets/our_advantages_custom_container.dart';

class OurAdvantagesListView extends StatefulWidget {
  const OurAdvantagesListView({
    super.key,
    required this.ourAdvantagesList,
    required this.triggerAnimation,
  });

  final List<OurAdvantagesModel> ourAdvantagesList;
  final bool triggerAnimation;

  @override
  State<OurAdvantagesListView> createState() => _OurAdvantagesListViewState();
}

class _OurAdvantagesListViewState extends State<OurAdvantagesListView>
    with TickerProviderStateMixin {
  late List<AnimationController> _controllers;
  late List<Animation<Offset>> _animations;

  @override
  void initState() {
    super.initState();

    _controllers = List.generate(widget.ourAdvantagesList.length, (index) {
      return AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 800),
      );
    });

    _animations = _controllers.map((controller) {
      return Tween<Offset>(
        begin: const Offset(-0.5, 0),
        end: Offset.zero,
      ).animate(CurvedAnimation(parent: controller, curve: Curves.easeOut));
    }).toList();
  }

  @override
  void didUpdateWidget(covariant OurAdvantagesListView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.triggerAnimation) {
      for (int i = 0; i < _controllers.length; i++) {
        Future.delayed(Duration(milliseconds: i * 100), () {
          if (mounted) _controllers[i].forward();
        });
      }
    } else {
      for (var controller in _controllers) {
        controller.reset();
      }
    }
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: widget.ourAdvantagesList.length,
        itemBuilder: (context, index) {
          return SlideTransition(
            position: _animations[index],
            child: OurAdvandatgesCustomContainer(
              ourAdvantagesModel: widget.ourAdvantagesList[index],
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 20),
      ),
    );
  }
}
