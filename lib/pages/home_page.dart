import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to Home Page'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => context.go('/second'),
              child: const Text('Go to Second Page'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => context.go('/token?pxtoken=sample123'),
              child: const Text('Go to Token Page'),
            ),
          ],
        ),
      ),
    );
  }
}
