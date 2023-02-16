import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pet_shop/core/theme/app_color.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({super.key});

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  final selectedIndex = ValueNotifier(0);

  final carousels = [
    "assets/carousel_1.png",
    "assets/carousel_2.png",
    "assets/carousel_3.png",
    "assets/carousel_4.png",
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CarouselSlider.builder(
            options: CarouselOptions(
              viewportFraction: 1,
              disableCenter: true,
              enableInfiniteScroll: true,
              onPageChanged: (index, reason) {
                selectedIndex.value = index;
              },
            ),
            itemCount: carousels.length,
            itemBuilder: (context, index, realIndex) {
              return Image(
                image: AssetImage(
                  carousels[index],
                ),
                fit: BoxFit.cover,
              );
            },
          ),
          Positioned(
            left: 16,
            bottom: 16,
            child: ValueListenableBuilder(
              valueListenable: selectedIndex,
              builder: (context, selected, child) {
                return Row(
                  children: List.generate(
                    carousels.length,
                    (index) {
                      return Container(
                        height: 10,
                        width: 10,
                        margin: const EdgeInsets.only(right: 4),
                        decoration: BoxDecoration(
                          color: selected == index
                              ? AppColor.primaryColor
                              : Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
