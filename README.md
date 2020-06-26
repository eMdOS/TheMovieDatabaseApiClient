# TheMovieDatabaseApiClient

API client for Apple platforms: iOS / tvOS / macOS.

### Configuration

The `themoviedb.org` API is localized. Localization works based on the `language` query parameter you send along with your request.

The API uses the [ISO-639-1](https://www.iso.org/iso-639-language-codes.html) standard for language codes.

> [Developer Docs](https://developers.themoviedb.org/3/getting-started/languages)

#### Default Language Configuration

By setting only the `apiKey` parameter, the client takes the app's current locale - `Locale.current.identifier`.

```swift
TheMovieDatabase.ClientConfig.setup(apiKey: "api_key")
```

#### Custom Language Configuration

It is also possible to manually set the `language` preference.

```swift
TheMovieDatabase.ClientConfig
    .setup(apiKey: "api_key", apiLanguage: "en") // => english
// or ...
TheMovieDatabase.ClientConfig
    .setup(apiKey: "api_key", apiLanguage: "es") // => spanish
// ... and so on
```
