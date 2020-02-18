<div align="center">
    <img src="assets/logo.png">
</div>

# <img src="assets/icon.png" height="60"> Temopedia

[![pipeline status](https://img.shields.io/gitlab/pipeline/G_Roux/temopedia)](https://gitlab.com/G_Roux/temopedia/commits/master)
[![Codemagic build status](https://api.codemagic.io/apps/5e4ae040000fe09eb5c118e7/5e4ae040000fe09eb5c118e6/status_badge.svg)](https://codemagic.io/apps/5e4ae040000fe09eb5c118e7/5e4ae040000fe09eb5c118e6/latest_build)

**WIP:** Mobile app companion for the game [Temtem](https://crema.gg/games/temtem/) to get an easy access to creature's information using [Mael's API](#credits).

I am not affiliated with Temtem's company. This is a personal project I'm doing on my free time.

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

## Todo

* [x] API - Load temtems list
* [x] API - Load types list
* [x] API - Load traits list
* [x] API - Load techniques list
* [x] HomePage - Display Temtems list
* [x] HomePage - Search bar to filter Temtems
* [x] HomePage - Filter Temtems by type
* [x] HomePage - Filter Temtems by favorite
* [ ] HomePage - Display Techniques list (Movedex ?)
* [ ] HomePage - Search bar to filter Techniques
* [ ] TechniquePage - Display technique's details
* [ ] TechniquePage - Display temtem's who can learn it
* [x] TemtemPage - Add picture
* [x] TemtemPage - Add traits
* [x] TemtemPage - Add statistics
* [x] TemtemPage - Add trivia
* [x] TemtemPage - Add details
* [x] TemtemPage - Add techiques list
* [x] TemtemPage - Add evolution chain
* [x] TemtemPage - Add locations list
* [ ] TemtemPage - Display location map
    * [x] Deniz (35/35)
    * [ ] Windward Fort
    * [ ] Aguamarina Caves
    * [ ] Superior Omninesia
    * [ ] Citerior Omninesia
    * [ ] Giant Banyan
    * [ ] Ulterior Omninesia
    * [ ] Anak Volcano
    * [ ] Tucma
    * [ ] Tucma Subsurface
* [x] TemtemPage - Add temtem to favorite
* [ ] TemtemPage - Add type effectiveness
* [x] Traits - Show trait's details inside a popup
* [x] Technique - Show technique's details inside a popup
* [ ] Design - Add animations
* [x] CI/CD

## Author

* [Guillaume Roux](https://gitlab.com/G_Roux) - Junior Developer

## Credits

* [Mael](https://github.com/maael) - The talented developer who made the [API](https://github.com/maael/temtem-api)

