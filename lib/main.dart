import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    // Khởi tạo Firebase
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    print('✅ Firebase kết nối thành công!');
    runApp(const MyApp());
  } catch (e) {
    print('❌ Lỗi kết nối Firebase: $e');
    runApp(const ErrorApp());
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kiểm tra Firebase',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const CheckFirebaseScreen(),
    );
  }
}

class CheckFirebaseScreen extends StatelessWidget {
  const CheckFirebaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kiểm tra Firebase')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.cloud, size: 100, color: Colors.green),
            const SizedBox(height: 20),
            const Text(
              'Firebase đã kết nối thành công!',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // In thông tin cấu hình Firebase ra console
                print('Thông tin cấu hình Firebase:');
                print(DefaultFirebaseOptions.currentPlatform);
              },
              child: const Text('Xem thông tin cấu hình'),
            ),
          ],
        ),
      ),
    );
  }
}

class ErrorApp extends StatelessWidget {
  const ErrorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Lỗi Firebase')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error, size: 100, color: Colors.red),
              const SizedBox(height: 20),
              const Text(
                'Không thể kết nối với Firebase!',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  // Thử kết nối lại
                  main();
                },
                child: const Text('Thử lại'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}