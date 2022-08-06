import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rating_cubit/cubit/rating_cubit.dart';
import 'package:rating_cubit/widgets/rating_star.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildStar(int ratingStar) {
      switch (ratingStar) {
        case 0:
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icon_star_1.png",
                height: 32,
                width: 32,
              ),
              const SizedBox(
                width: 12,
              ),
              Image.asset(
                "assets/icon_star_0.png",
                height: 32,
                width: 32,
              ),
              const SizedBox(
                width: 12,
              ),
              Image.asset(
                "assets/icon_star_0.png",
                height: 32,
                width: 32,
              ),
              const SizedBox(
                width: 12,
              ),
              Image.asset(
                "assets/icon_star_0.png",
                height: 32,
                width: 32,
              ),
              const SizedBox(
                width: 12,
              ),
              Image.asset(
                "assets/icon_star_0.png",
                height: 32,
                width: 32,
              ),
            ],
          );
        case 1:
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icon_star_1.png",
                height: 32,
                width: 32,
              ),
              const SizedBox(
                width: 12,
              ),
              Image.asset(
                "assets/icon_star_1.png",
                height: 32,
                width: 32,
              ),
              const SizedBox(
                width: 12,
              ),
              Image.asset(
                "assets/icon_star_0.png",
                height: 32,
                width: 32,
              ),
              const SizedBox(
                width: 12,
              ),
              Image.asset(
                "assets/icon_star_0.png",
                height: 32,
                width: 32,
              ),
              const SizedBox(
                width: 12,
              ),
              Image.asset(
                "assets/icon_star_0.png",
                height: 32,
                width: 32,
              ),
            ],
          );
        case 2:
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icon_star_1.png",
                height: 32,
                width: 32,
              ),
              const SizedBox(
                width: 12,
              ),
              Image.asset(
                "assets/icon_star_1.png",
                height: 32,
                width: 32,
              ),
              const SizedBox(
                width: 12,
              ),
              Image.asset(
                "assets/icon_star_1.png",
                height: 32,
                width: 32,
              ),
              const SizedBox(
                width: 12,
              ),
              Image.asset(
                "assets/icon_star_0.png",
                height: 32,
                width: 32,
              ),
              const SizedBox(
                width: 12,
              ),
              Image.asset(
                "assets/icon_star_0.png",
                height: 32,
                width: 32,
              ),
            ],
          );
        case 3:
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icon_star_1.png",
                height: 32,
                width: 32,
              ),
              const SizedBox(
                width: 12,
              ),
              Image.asset(
                "assets/icon_star_1.png",
                height: 32,
                width: 32,
              ),
              const SizedBox(
                width: 12,
              ),
              Image.asset(
                "assets/icon_star_1.png",
                height: 32,
                width: 32,
              ),
              const SizedBox(
                width: 12,
              ),
              Image.asset(
                "assets/icon_star_1.png",
                height: 32,
                width: 32,
              ),
              const SizedBox(
                width: 12,
              ),
              Image.asset(
                "assets/icon_star_0.png",
                height: 32,
                width: 32,
              ),
            ],
          );
        case 4:
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icon_star_1.png",
                height: 32,
                width: 32,
              ),
              const SizedBox(
                width: 12,
              ),
              Image.asset(
                "assets/icon_star_1.png",
                height: 32,
                width: 32,
              ),
              const SizedBox(
                width: 12,
              ),
              Image.asset(
                "assets/icon_star_1.png",
                height: 32,
                width: 32,
              ),
              const SizedBox(
                width: 12,
              ),
              Image.asset(
                "assets/icon_star_1.png",
                height: 32,
                width: 32,
              ),
              const SizedBox(
                width: 12,
              ),
              Image.asset(
                "assets/icon_star_1.png",
                height: 32,
                width: 32,
              ),
            ],
          );
      }
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/icon_star_1.png",
            height: 32,
            width: 32,
          ),
          const SizedBox(
            width: 12,
          ),
          Image.asset(
            "assets/icon_star_0.png",
            height: 32,
            width: 32,
          ),
          const SizedBox(
            width: 12,
          ),
          Image.asset(
            "assets/icon_star_0.png",
            height: 32,
            width: 32,
          ),
          const SizedBox(
            width: 12,
          ),
          Image.asset(
            "assets/icon_star_0.png",
            height: 32,
            width: 32,
          ),
          const SizedBox(
            width: 12,
          ),
          Image.asset(
            "assets/icon_star_0.png",
            height: 32,
            width: 32,
          ),
        ],
      );
    }

    return BlocProvider(
      create: (context) => RatingCubit(),
      child: MaterialApp(
        home: BlocBuilder<RatingCubit, int>(
          builder: (context, indexState) {
            return Scaffold(
              body: Center(
                child: Stack(
                  children: [
                    buildStar(indexState),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        RatingStar(
                          index: 0,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        RatingStar(
                          index: 1,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        RatingStar(
                          index: 2,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        RatingStar(
                          index: 3,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        RatingStar(
                          index: 4,
                        ),
                      ],
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
