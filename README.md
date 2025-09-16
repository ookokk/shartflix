# Shartflix - Flutter Study Case (NodeLabs Software)

Shartflix, Flutter ile geliştirilmiş bir film katalog uygulaması olarak tasarlanmış bir **study case** projesidir. 

---

## Özellikler

- **Riverpod ile State Yönetimi:** Global ve lokal state yönetimi, özellikle kullanıcı etkileşimleri.
- **AutoRoute ile Navigation:** Sayfalar arası yönetimli ve tip güvenli navigasyon.
- **Responsive UI:** `flutter_screenutil` kullanılarak ekran boyutlarına uygun tasarım.
- **Localization:** `easy_localization` ile çoklu dil desteği.

---

## Paketler

- **State Management:** `flutter_riverpod`
- **Navigation:** `auto_route` + `auto_route_generator`
- **Networking:** `dio`, `connectivity_plus`
- **UI:** `flutter_screenutil`, `flutter_svg`, `cached_network_image`, `lottie`, `dotted_border`
- **Localization:** `easy_localization`
- **Fonts & Styling:** `google_fonts`, `kartal`
- **Secure Storage:** `flutter_secure_storage`
- **Code Generation:** `freezed`, `json_serializable`, `build_runner`
- **Dev Tools:** `flutter_lints`, `very_good_analysis`


https://github.com/user-attachments/assets/6948ed20-68e1-4cd3-91dc-b6acb0fd6d33

<img width="300" height="650" alt="Simulator Screenshot - iPhone 16 Pro - 2025-09-16 at 18 17 12" src="https://github.com/user-attachments/assets/db598564-bdd5-4e9c-a2f8-b97d84ac85ae" />
<img width="300" height="650" alt="Simulator Screenshot - iPhone 16 Pro - 2025-09-16 at 18 15 37" src="https://github.com/user-attachments/assets/1346e078-2307-494f-a58b-fec033ed2130" />
<img width="300" height="650" alt="Simulator Screenshot - iPhone 16 Pro - 2025-09-16 at 18 15 21" src="https://github.com/user-attachments/assets/a725e283-01d9-4f24-b77b-fbf3785583b0" />
<img width="300" height="650" alt="Simulator Screenshot - iPhone 16 Pro - 2025-09-16 at 18 14 38" src="https://github.com/user-attachments/assets/9d671320-c308-44f8-8910-b3ee4313f81a" />
<img width="300" height="650" alt="Simulator Screenshot - iPhone 16 Pro - 2025-09-16 at 18 14 25" src="https://github.com/user-attachments/assets/042e28c4-4621-403a-bb12-0dd3617982b4" />
<img width="300" height="650" alt="Simulator Screenshot - iPhone 16 Pro - 2025-09-16 at 18 14 16" src="https://github.com/user-attachments/assets/da1c13ee-9fd6-4b21-9618-7d86fe5c13b9" />
<img width="300" height="650" alt="Simulator Screenshot - iPhone 16 Pro - 2025-09-16 at 18 13 44" src="https://github.com/user-attachments/assets/121167db-ba0d-41cb-a5d7-59aff6a35fc6" />
<img width="300" height="650" alt="Simulator Screenshot - iPhone 16 Pro - 2025-09-16 at 18 13 31" src="https://github.com/user-attachments/assets/6fe52316-97df-4b0d-81e6-2d3f230a87dc" />
<img width="300" height="650" alt="Simulator Screenshot - iPhone 16 Pro - 2025-09-16 at 18 10 46" src="https://github.com/user-attachments/assets/40b2ae63-a452-4aa2-9401-5105d49de8da" />
<img width="300" height="650" alt="Simulator Screenshot - iPhone 16 Pro - 2025-09-16 at 18 10 24" src="https://github.com/user-attachments/assets/c7e0ac68-0b52-4a56-884d-9a0e53448bf8" />
<img width="300" height="650" alt="Simulator Screenshot - iPhone 16 Pro - 2025-09-16 at 18 21 33" src="https://github.com/user-attachments/assets/f7a9e0a1-2902-498d-969b-bd835927ae97" />
<img width="300" height="650" alt="Simulator Screenshot - iPhone 16 Pro - 2025-09-16 at 18 21 27" src="https://github.com/user-attachments/assets/6f4df121-8b17-4d3e-8293-b01595078276" />
<img width="300" height="650" alt="Simulator Screenshot - iPhone 16 Pro - 2025-09-16 at 18 18 31" src="https://github.com/user-attachments/assets/f1faa015-e7d8-490d-a065-c376ff4c40df" />
<img width="300" height="650" alt="Simulator Screenshot - iPhone 16 Pro - 2025-09-16 at 18 18 19" src="https://github.com/user-attachments/assets/4af2452a-573f-4d9f-8824-f270d59dcc33" />
<img width="300" height="650" alt="Simulator Screenshot - iPhone 16 Pro - 2025-09-16 at 18 18 07" src="https://github.com/user-attachments/assets/c28f1b3a-1c07-457a-9f9d-f68f4cd713a7" />
<img width="300" height="650" alt="Simulator Screenshot - iPhone 16 Pro - 2025-09-16 at 18 17 49" src="https://github.com/user-attachments/assets/55d86d5c-9a24-4394-b49d-4d857622d7d0" />
<img width="300" height="650" alt="Simulator Screenshot - iPhone 16 Pro - 2025-09-16 at 18 17 22" src="https://github.com/user-attachments/assets/8b00444d-37c2-427f-a186-0438a146a72a" />

---

## Folder Structure
```
lib/
├── app.dart
├── bootstrap.dart
├── main.dart
├── core/
│ ├── const
│ ├── init
│ ├── router
│ ├── theme
│ └── util
├── feature/
│ ├── auth
│ ├── explore
│ ├── photo_upload
│ ├── profile
│ └── settings
├── product/
│ ├── model
│ ├── service
│ └── widget

```
