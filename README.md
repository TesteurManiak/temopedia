<div align="center">
    <img src="assets/logo.png">
</div>

# <img src="assets/icon.png" height="60"> Temopedia

[![pipeline status](https://img.shields.io/gitlab/pipeline/G_Roux/temopedia)](https://gitlab.com/G_Roux/temopedia/commits/master)

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

This application is a WIP for now so there is no release build.
To test the application you need to clone and build the souce code, [Flutter SDK](https://flutter.dev/) is required to do so.

``` bash
git clone https://gitlab.com/G_Roux/temopedia.git
cd temopedia/
flutter build apk # or build ios
flutter install
```

## Todo

* [x] API - Load temtems list
* [x] API - Load types list
* [x] API - Load traits list
* [x] API - Load techniques list
* [x] HomePage - Display temtems list
* [x] HomePage - Search bar to filter temtems
* [x] TemtemPage - Add picture
* [x] TemtemPage - Add traits
* [x] TemtemPage - Add statistics
* [x] TemtemPage - Add trivia
* [x] TemtemPage - Add details
* [x] TemtemPage - Add techiques list
* [x] TemtemPage - Add evolution chain
* [x] TemtemPage - Add locations list
* [x] Traits - Show trait's details inside a popup
* [x] Technique - Show technique's details inside a popup
* [ ] Better design and animations
* [x] CI/CD
* [ ] (Playstore release ?)

## Author

* [Guillaume Roux](https://gitlab.com/G_Roux) - Junior Developer

## Credits

* [Mael](https://github.com/maael) - The talented developer who made the [API](https://github.com/maael/temtem-api)

