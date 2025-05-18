# 📦 food_delivery_master
my app flutter

## 🔥 1. Hướng dẫn kết nối Firebase với app bằng Firebase CLI
Sau khi đã tải app, hãy xóa file firebase_options.dart cũ trong project và mở terminal lên.

### 1.1. Cài đặt Firebase CLI
```bash
npm install -g firebase-tools
```
### 1.2. Đăng nhập Firebase
```bash 
firebase login
```

### 1.3. Kết nối dự án Flutter với Firebase
##### Cài đặt FlutterFire CLI:
```bash
dart pub global activate flutterfire_cli
```
##### Chạy lệnh cấu hình:
```bash
flutterfire configure
```

## À có khi bạn sẽ cần: Cách lấy SHA1 và SHA256 của app đơn giản và hiêu quả trong Android Studio với app Flutter
###### Bước 1: Mở terminal đã cd đến project/app sau đó 
```bash
cd android
```
###### Rồi lại chạy tiếp câu lệnh sau: 
```bash
./gradlew signingReport
```
###### =>Sau đó sẽ có thành quả bạn mong muốn 
