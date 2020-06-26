import Foundation

// MARK: - Endpoint

struct Endpoint: Equatable {
    let path: String
    let query: [URLQueryItem]?

    init(path: String, query: [URLQueryItem]? = nil) {
        self.path = path
        self.query = query
    }
}

// MARK: - Movies Endpoints

extension Endpoint {
    static func nowPlaying(page: Int? = nil) -> Self {
        Endpoint(
            path: "/3/movie/now_playing",
            query: page
                .map(URLQueryItem.page)
                .map({ [$0] })
        )
    }

    static func popular(page: Int? = nil) -> Self {
        Endpoint(
            path: "/3/movie/popular",
            query: page
                .map(URLQueryItem.page)
                .map({ [$0] })
        )
    }

    static func topRated(page: Int? = nil) -> Self {
        Endpoint(
            path: "/3/movie/top_rated",
            query: page
                .map(URLQueryItem.page)
                .map({ [$0] })
        )
    }

    static func upcoming(page: Int? = nil) -> Self {
        Endpoint(
            path: "/3/movie/upcoming",
            query: page
                .map(URLQueryItem.page)
                .map({ [$0] })
        )
    }

    static func similar(movieID: Int, page: Int? = nil) -> Self {
        Endpoint(
            path: "/3/movie/\(movieID)/similar",
            query: page
                .map(URLQueryItem.page)
                .map({ [$0] })
        )
    }

    static func recommendations(movieID: Int, page: Int? = nil) -> Self {
        Endpoint(
            path: "/3/movie/\(movieID)/recommendations",
            query: page
                .map(URLQueryItem.page)
                .map({ [$0] })
        )
    }

    static func reviews(movieID: Int, page: Int? = nil) -> Self {
        Endpoint(
            path: "/3/movie/\(movieID)/reviews",
            query: page
                .map(URLQueryItem.page)
                .map({ [$0] })
        )
    }

    static func movie(id: Int) -> Self {
        Endpoint(path: "/3/movie/\(id)")
    }
}

