import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TokenPage extends StatelessWidget {
  final String? pxtoken;
  
  const TokenPage({
    super.key,
    required this.pxtoken,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Token Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Token Page'),
            const SizedBox(height: 20),
            Text('Received Token: ${pxtoken ?? "No token provided"}'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => context.go('/'),
              child: const Text('Go back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
