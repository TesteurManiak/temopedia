<div align="center">
    <img src="assets/logo.png">
</div>

# <img src="assets/icon.png" height="60"> Temopedia

Mobile app companion for the game [Temtem](https://crema.gg/games/temtem/) to get an easy access to creature's information using [Mael's API](#credits).

I am not affiliated with Temtem's company. This is a personal project I'm doing on my free time.

**This project is under heavy refactoring. Everything might not work as expected.**

## Refacto

- [ ] Temtems page
  - [x] Temtems list
  - [x] Filter by name
  - [ ] Filter by type
  - [ ] Filter by favorite
  - [x] Reset filters
- [ ] Temtem details page
- [ ] Temtem map page
- [ ] Offline mode

## Screenshots

<div align="center">
    <img src="flutter_01.png" height="400">
    <img src="flutter_02.png" height="400">
    <img src="flutter_03.png" height="400">
    <img src="flutter_04.png" height="400">
</div>

## How to install

### Android

[<img src="https://play.google.com/intl/en_us/badges/static/images/badges/en_badge_web_generic.png" height="200">](https://play.google.com/store/apps/details?id=com.maniak.temopedia)

### iOS

There is no release on the AppStore yet.
To test the application you need to clone and build the souce code, [Flutter SDK](https://flutter.dev/) is required to do so.

``` bash
git clone https://gitlab.com/G_Roux/temopedia.git
cd temopedia/
flutter build ios
flutter install
```

## Generate translations

``` bash
flutter gen-l10n
```

## Generate the app icon

``` bash
flutter pub run flutter_launcher_icons:main
```

## Generate splash screen

``` bash
flutter pub run flutter_native_splash:create
```

## Credits

* [Guillaume Roux](https://github.com/TesteurManiak) - Flutter Developer
* [Mael](https://github.com/maael) - The talented developer who made the [API](https://github.com/maael/temtem-api)

