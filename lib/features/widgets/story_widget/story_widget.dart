import "package:flutter/material.dart";
import 'package:dashed_circle/dashed_circle.dart';
import 'package:selcuk_topluluk/core/init/theme/color/project_color.dart';
import 'package:selcuk_topluluk/features/widgets/story_widget/story_view_page.dart';

class StoryWidget extends StatefulWidget {
  const StoryWidget({Key? key}) : super(key: key);

  @override
  State<StoryWidget> createState() => _StoryWidgetState();
}

// It is configured to only tick when the current tree is enabled.

// SingleTickerProviderStateMixin is used when there is only a single Animation COntoller.
/// AnimationControllers can be created with vsync: this because of TickerProviderStateMixin.

class _StoryWidgetState extends State<StoryWidget> with TickerProviderStateMixin {
  //gap between the dots
  late Animation<double> gap;

// the point of animation
  late Animation<double> base;

  // it  reverse the animation
  late Animation<double> reverse;

  // constructor whenever you create a new animation controller.
  late AnimationController controller;

  var model = [
    "https://webadmin.selcuk.edu.tr/contents/029006/slider/5396/swis0/20220516_105512_637970181723878182.jpg",
    "https://webadmin.selcuk.edu.tr/contents/029006/slider/5397/swis0/20220520_125126_637970181927866164.jpg",
    "https://pbs.twimg.com/media/Fh8PJ4zXwAQljMl.jpg",
    "https://rukminim1.flixcart.com/image/416/416/kjhgzgw0-0/book/x/o/y/ieee-802-15-4-protocol-performance-original-imafzfgeuyzhtpff.jpeg?q=70",
    "https://pbs.twimg.com/media/Fh8PJ4zXwAQljMl.jpg",
    "https://webadmin.selcuk.edu.tr/contents/029006/slider/5398/swis0/IMG_2337_637970182100603249.jpg",
  ];
  var modelTest = ["GDG 2022", "KonyaFest", "Hackhaton", "Teknofest", " Piknik", "Akademik"];

  @override
  void initState() {
    super.initState();

// We pass vsync: this to the animation controller to create an Animation controller in a class
// that uses this mixin
    controller = AnimationController(vsync: this, duration: const Duration(seconds: 10));
// curved animation  applies curves to animation
//it is especially used if we want different curves when animation is moving forward or backward

    base = CurvedAnimation(parent: controller, curve: Curves.easeOut);
// A linear interpolation between a beginning and ending value.
    //to revert the animation of the image when borders are animating
    reverse = Tween<double>(begin: 0.0, end: -1.0).animate(base);

    gap = Tween<double>(begin: 15.0, end: 0.0).animate(base) //the gap between the dots
      ..addListener(() {
        //.. This syntax means that the addListener() method is called
        // with the return value from animate().
        setState(() {});
      });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.14,
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: ListView.builder(
          itemCount: model.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () => Navigator.push(context,
                  // A modal route that replaces the entire screen with a platform-specific transition.
                  // For Android, the entrance transition for the
                  // page zooms in and fades in while the exiting page zooms out and fades out.
                  // The exit transition is similar, but in reverse.

                  // For iOS, the page slides in from the right and exits in reverse.

                  MaterialPageRoute(builder: (_) {
                return StoryViewPage(model, index);
              })),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      child: RotationTransition(
                        //it animates the rotation of widget
                        turns: base,
                        child: DashedCircle(
                          gapSize: gap.value,
                          dashes: 20,
                          color: CustomColors.instance.buttonBackGroundColor,
                          child: RotationTransition(
                            turns: reverse,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: CircleAvatar(
                                radius: 25.0,
                                backgroundImage: NetworkImage(model[index]),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Text(modelTest[index]),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
