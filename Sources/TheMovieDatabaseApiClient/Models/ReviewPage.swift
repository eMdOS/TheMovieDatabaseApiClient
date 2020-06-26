import Foundation

public struct ReviewPage: Decodable {
    public let movieID: Movie.ID
    public let page: Int
    public let totalPages: Int
    public let totalResults: Int
    public let results: [Review]
}

private extension ReviewPage {
    enum CodingKeys: String, CodingKey {
        case movieID = "id"
        case page
        case totalPages = "total_pages"
        case totalResults = "total_results"
        case results
    }
}
