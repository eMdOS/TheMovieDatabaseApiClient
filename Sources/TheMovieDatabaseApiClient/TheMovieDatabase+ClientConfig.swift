import Foundation
import Arrows

fileprivate(set) var default_query: [URLQueryItem]? = nil

public enum TheMovieDatabase { /* namespacing */ }

extension TheMovieDatabase {
    public enum ClientConfig {
        ///
        /// - Parameters:
        ///   - apiKey: The `api_key` value.
        ///   - apiLanguage: **ISO 639-1** value to display translated data for the fields that support it.
        ///   By default, it takes the `identifier` from the `Locale`, when `nil` the API takes `en-US` as default value.
        ///
        public static func setup(apiKey: String, apiLanguage: String? = Locale.current.identifier) {
            let apiKeyQueryItem = URLQueryItem.apiKey(apiKey)
            let languageQueryItem = apiLanguage.map(URLQueryItem.apiLanguage)
            default_query = [apiKeyQueryItem, languageQueryItem].compactMap(id)
        }
    }
}
