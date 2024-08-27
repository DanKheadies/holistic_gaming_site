import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:holistic_gaming_site/widgets/widgets.dart';

class PixaToolPicBlock extends StatefulWidget {
  final List<String> picList;
  final String text;
  final String linkUrl;
  final double width;

  const PixaToolPicBlock({
    super.key,
    required this.picList,
    required this.text,
    required this.linkUrl,
    required this.width,
  });

  @override
  State<PixaToolPicBlock> createState() => _PixaToolPicBlockState();
}

class _PixaToolPicBlockState extends State<PixaToolPicBlock> {
  CarouselSliderController carouselController = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            CarouselSlider(
              carouselController: carouselController,
              options: CarouselOptions(
                autoPlay: widget.picList.length > 1 ? true : false,
                autoPlayInterval: const Duration(seconds: 5),
                autoPlayAnimationDuration: const Duration(milliseconds: 500),
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                scrollDirection: Axis.horizontal,
                scrollPhysics: const NeverScrollableScrollPhysics(),
                viewportFraction: 1,
              ),
              items: widget.picList
                  .map(
                    (pic) => Container(
                      margin: const EdgeInsets.all(15),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                        child: Image.asset(
                          pic,
                          fit: BoxFit.contain,
                          width: widget.width,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
            widget.picList.length > 1
                ? Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed: () {
                        carouselController.nextPage();
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(20),
                        backgroundColor: Theme.of(context).colorScheme.surface,
                        foregroundColor:
                            Theme.of(context).scaffoldBackgroundColor,
                      ),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Theme.of(context).scaffoldBackgroundColor,
                      ),
                    ),
                  )
                : const SizedBox(),
            widget.picList.length > 1
                ? Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                      onPressed: () {
                        carouselController.previousPage();
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(20),
                        backgroundColor: Theme.of(context).colorScheme.surface,
                        foregroundColor:
                            Theme.of(context).scaffoldBackgroundColor,
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        color: Theme.of(context).scaffoldBackgroundColor,
                      ),
                    ),
                  )
                : const SizedBox(),
          ],
        ),
        const SizedBox(height: 15),
        Align(
          alignment: Alignment.center,
          child: ActionLink(
            text: widget.text,
            navLink: widget.linkUrl,
            onTap: () {},
          ),
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}
