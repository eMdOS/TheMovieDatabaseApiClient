import Foundation

public struct Movie: Decodable {
    public typealias ID = Int

    public let id: ID
    public let title: String
    public let overview: String

    public let originalTitle: String
    public let originalLanguage: String

    public let posterPath: String?
    public let backdropPath: String?

    public let genreIDs: [Int]

    public let popularity: Double
    public let voteCount: Int
    public let voteAverage: Double

    public let releaseDate: Date

    public let hasVideo: Bool
    public let isAdultContent: Bool
}

private extension Movie {
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case overview
        case originalTitle = "original_title"
        case originalLanguage = "original_language"
        case posterPath = "poster_path"
        case backdropPath = "backdrop_path"
        case genreIDs = "genre_ids"
        case popularity
        case voteCount = "vote_count"
        case voteAverage = "vote_average"
        case releaseDate = "release_date"
        case hasVideo = "video"
        case isAdultContent = "adult"
    }
}

extension Movie {
    public struct Details: Decodable {
        public let id: Movie.ID
        public let title: String
        public let overview: String?

        public let originalTitle: String
        public let originalLanguage: String

        public let posterPath: String?
        public let backdropPath: String?

        public let popularity: Double
        public let voteCount: Int
        public let voteAverage: Double

        public let releaseDate: Date

        public let hasVideo: Bool
        public let isAdultContent: Bool

        public let tagline: String?
        public let status: Status

        public let homepage: URL?

        public let budget: Int
        public let revenue: Int

        public let runtime: Int?

        public let genres: [Genre]
        public let productionCompanies: [ProductionCompany]
        public let productionCountries: [ProductionCountry]
        public let spokenLanguages: [Language]

        public let imdbID: String
    }
}

private extension Movie.Details {
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case overview
        case originalTitle = "original_title"
        case originalLanguage = "original_language"
        case posterPath = "poster_path"
        case backdropPath = "backdrop_path"
        case popularity
        case voteCount = "vote_count"
        case voteAverage = "vote_average"
        case releaseDate = "release_date"
        case hasVideo = "video"
        case isAdultContent = "adult"
        case tagline
        case status
        case homepage
        case budget
        case revenue
        case runtime
        case genres
        case productionCompanies = "production_companies"
        case productionCountries = "production_countries"
        case spokenLanguages = "spoken_languages"
        case imdbID = "imdb_id"
    }
}
