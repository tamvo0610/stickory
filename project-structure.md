# 📁 Project Structure

```text
stickory/
│
├── android/
├── ios/
│
├── assets/
│   │
│   ├── icons/
│   ├── images/
│   ├── stickers/
│   ├── templates/
│   └── fonts/
│
├── lib/
│   │
│   ├── app/
│   │   │
│   │   ├── app.dart
│   │   │
│   │   ├── router/
│   │   │   ├── app_router.dart
│   │   │   ├── app_routes.dart
│   │   │   └── route_guard.dart
│   │   │
│   │   └── theme/
│   │       ├── app_colors.dart
│   │       ├── app_spacing.dart
│   │       ├── app_radius.dart
│   │       ├── app_typography.dart
│   │       └── app_theme.dart
│   │
│   ├── core/
│   │   │
│   │   ├── constants/
│   │   │   ├── app_constants.dart
│   │   │   └── storage_keys.dart
│   │   │
│   │   ├── extensions/
│   │   │
│   │   ├── network/
│   │   │   ├── api_client.dart
│   │   │   └── supabase_client.dart
│   │   │
│   │   ├── services/
│   │   │   ├── analytics_service.dart
│   │   │   ├── image_service.dart
│   │   │   ├── poster_service.dart
│   │   │   └── permission_service.dart
│   │   │
│   │   ├── storage/
│   │   │   ├── hive_service.dart
│   │   │   └── secure_storage.dart
│   │   │
│   │   └── utils/
│   │
│   ├── shared/
│   │   │
│   │   ├── models/
│   │   │   ├── user_model.dart
│   │   │   ├── sticker_model.dart
│   │   │   ├── collection_model.dart
│   │   │   └── poster_model.dart
│   │   │
│   │   ├── widgets/
│   │   │   ├── app_button.dart
│   │   │   ├── app_card.dart
│   │   │   ├── app_text_field.dart
│   │   │   ├── app_loading.dart
│   │   │   └── empty_state.dart
│   │   │
│   │   ├── components/
│   │   │   ├── sticker_tile/
│   │   │   ├── collection_card/
│   │   │   ├── poster_card/
│   │   │   └── bottom_nav/
│   │   │
│   │   └── providers/
│   │
│   ├── features/
│   │   │
│   │   ├── auth/
│   │   │   │
│   │   │   ├── data/
│   │   │   │   ├── auth_repository.dart
│   │   │   │   └── auth_datasource.dart
│   │   │   │
│   │   │   ├── presentation/
│   │   │   │   ├── splash_screen.dart
│   │   │   │   ├── login_screen.dart
│   │   │   │   └── auth_provider.dart
│   │   │
│   │   ├── home/
│   │   │   │
│   │   │   ├── presentation/
│   │   │   │   ├── home_screen.dart
│   │   │   │
│   │   │   │   └── widgets/
│   │   │   │       ├── statistics_card.dart
│   │   │   │       ├── collection_section.dart
│   │   │   │       ├── recent_stickers.dart
│   │   │   │       └── recent_posters.dart
│   │   │
│   │   ├── sticker/
│   │   │   │
│   │   │   ├── data/
│   │   │   │   ├── sticker_repository.dart
│   │   │   │   └── sticker_datasource.dart
│   │   │   │
│   │   │   ├── presentation/
│   │   │   │
│   │   │   │   ├── screens/
│   │   │   │   │   ├── sticker_library_screen.dart
│   │   │   │   │   ├── create_sticker_screen.dart
│   │   │   │   │   ├── sticker_detail_screen.dart
│   │   │   │   │   ├── edit_sticker_screen.dart
│   │   │   │   │   └── add_to_collection_screen.dart
│   │   │   │
│   │   │   │   └── providers/
│   │   │
│   │   ├── collection/
│   │   │   │
│   │   │   ├── data/
│   │   │   │
│   │   │   ├── presentation/
│   │   │   │
│   │   │   │   ├── screens/
│   │   │   │   │   ├── collection_list_screen.dart
│   │   │   │   │   ├── create_collection_screen.dart
│   │   │   │   │   ├── collection_detail_screen.dart
│   │   │   │   │   └── edit_collection_screen.dart
│   │   │   │
│   │   │   │   └── providers/
│   │   │
│   │   ├── poster/
│   │   │   │
│   │   │   ├── data/
│   │   │   │
│   │   │   ├── presentation/
│   │   │   │
│   │   │   │   ├── screens/
│   │   │   │   │   ├── create_poster_screen.dart
│   │   │   │   │   ├── poster_preview_screen.dart
│   │   │   │   │   └── poster_history_screen.dart
│   │   │   │
│   │   │   │   └── providers/
│   │   │
│   │   └── profile/
│   │       │
│   │       ├── presentation/
│   │       │   ├── profile_screen.dart
│   │       │   ├── settings_screen.dart
│   │       │   └── premium_screen.dart
│   │       │
│   │       └── providers/
│   │
│   └── main.dart
│
├── test/
│
├── pubspec.yaml
│
└── README.md
```

---

# 🎯 MVP Screens

```text
Authentication
├── Splash Screen
└── Login Screen

Home
└── Home Screen

Sticker
├── Sticker Library
├── Create Sticker
├── Sticker Detail
├── Edit Sticker
└── Add To Collection

Collection
├── Collection List
├── Create Collection
├── Collection Detail
└── Edit Collection

Poster
├── Create Poster
├── Poster Preview
└── Poster History

Profile
├── Profile
├── Settings
└── Premium
```

---

# 🧩 Shared Components

```text
shared/components/

├── bottom_nav/
│   ├── bottom_nav.dart
│   └── bottom_nav_item.dart
│
├── sticker_tile/
│   ├── sticker_tile.dart
│   └── sticker_tile_loading.dart
│
├── collection_card/
│   ├── collection_card.dart
│   └── collection_card_loading.dart
│
└── poster_card/
    ├── poster_card.dart
    └── poster_card_loading.dart
```

---

# 🚀 Development Roadmap

```text
Sprint 1
├── Theme
├── Router
├── Authentication
├── Bottom Navigation
└── Home

Sprint 2
├── Sticker Library
├── Create Sticker
├── Sticker Detail
├── Edit Sticker
└── Add To Collection

Sprint 3
├── Collection List
├── Create Collection
├── Collection Detail
└── Edit Collection

Sprint 4
├── Create Poster
├── Poster Preview
├── Export PNG
└── Save To Gallery

Sprint 5
├── Premium
├── Analytics
└── Crashlytics
```
