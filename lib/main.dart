import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme.dart';
import 'models.dart';
import 'screens/hub_screen.dart';
import 'screens/jarvis_assistant.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppState()),
        ChangeNotifierProvider(create: (_) => JarvisStateProvider()),
      ],
      child: const BazinoApp(),
    ),
  );
}

class BazinoApp extends StatelessWidget {
  const BazinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bazino Esports Hub',
      debugShowCheckedModeBanner: false,
      theme: GamingTheme.darkTheme,
      home: Consumer<AppState>(
        builder: (context, appState, _) {
          if (appState.isBootstrapping) {
            return Scaffold(
              backgroundColor: GamingTheme.darkBg,
              body: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const CircularProgressIndicator(color: GamingTheme.primary),
                    const SizedBox(height: 16),
                    Text(
                      appState.language == 'fa' ? 'در حال اتصال به سرور بازینو...' : 'Connecting to Bazino server...',
                      style: const TextStyle(color: Colors.white70, fontSize: 12),
                    ),
                  ],
                ),
              ),
            );
          }
          return const HubScreen();
        },
      ),
    );
  }
}
