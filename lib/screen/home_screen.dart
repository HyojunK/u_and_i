import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: const SafeArea(
        top: true,
        bottom: false,
        child: Column(
          // 두 위젯을 각각 위 아래 끝에 배치
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _DDay(),
            _CoupleImage(),
          ],
        ),
      ),
    );
  }
}

class _DDay extends StatelessWidget {
  const _DDay();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        const SizedBox(height: 16.0),
        Text(
          "U&I",
          style: textTheme.headlineLarge,
        ),
        const SizedBox(height: 16.0),
        Text(
          "우리 처음 만난 날",
          style: textTheme.bodyLarge,
        ),
        Text(
          "2024.01.03",
          style: textTheme.bodyMedium,
        ),
        const SizedBox(height: 16.0),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.favorite,
            color: Colors.red,
          ),
          iconSize: 60.0,
        ),
        const SizedBox(height: 16.0),
        Text(
          "D+365",
          style: textTheme.headlineMedium,
        ),
      ],
    );
  }
}

class _CoupleImage extends StatelessWidget {
  const _CoupleImage();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Image.asset(
          "asset/img/middle_image.png",
          // 화면의 절반 높이
          height: MediaQuery.of(context).size.height / 2,
        ),
      ),
    );
  }
}
