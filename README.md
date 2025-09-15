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
