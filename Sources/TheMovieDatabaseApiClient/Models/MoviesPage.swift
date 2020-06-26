import Foundation

public struct MoviesPage: Decodable {
    public struct Dates: Decodable {
        public let maximum: Date
        public let minimum: Date
    }

    public let page: Int
    public let totalPages: Int
    public let totalResults: Int
    public let results: [Movie]
    public let dates: MoviesPage.Dates?
}

private extension MoviesPage {
    enum CodingKeys: String, CodingKey {
        case page
        case totalPages = "total_pages"
        case totalResults = "total_results"
        case results
        case dates
    }
}
