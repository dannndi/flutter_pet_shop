import 'package:flutter/material.dart';
import 'package:pet_shop/core/route/app_route_name.dart';
import 'package:pet_shop/core/theme/app_color.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
          bottom: MediaQuery.of(context).padding.bottom,
          left: 24,
          right: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage(
                "assets/img_logo.png",
              ),
            ),
            const SizedBox(height: 16),
            Text(
              "Find needs of your\nbeloved animal here",
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            const Expanded(
              child: Image(
                image: AssetImage(
                  "assets/img_get_started.png",
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              "Get attractive promos here, immediately\njust register your account to fulfill the\nbest needs for your beloved pet",
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(
                  context,
                  AppRouteName.home,
                );
              },
              child: Container(
                height: 66,
                decoration: BoxDecoration(
                  color: AppColor.primaryColor,
                  borderRadius: BorderRadius.circular(32),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Get Started",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: AppColor.white),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an Account ? ",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                TextButton(onPressed: () {}, child: const Text("Login"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
