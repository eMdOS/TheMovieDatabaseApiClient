import Foundation

extension URLQueryItem {
    static func apiKey(_ value: String) -> Self {
        .init(name: "api_key", value: value)
    }

    static func apiLanguage(_ value: String) -> Self {
        .init(name: "language", value: value)
    }

    static func page(_ value: Int) -> Self {
        .init(name: "page", value: String(value))
    }
}
