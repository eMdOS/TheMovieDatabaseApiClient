import Foundation
import Combine

// MARK: - /movie endpoint calls

public extension TMDBApiClient {
    func getNowPlaying(page: Int? = nil) -> AnyPublisher<MoviesPage, Swift.Error> {
        dataTaskPublisher(for: .nowPlaying(page: page), responseType: MoviesPage.self)
    }

    func getPopular(page: Int? = nil) -> AnyPublisher<MoviesPage, Swift.Error> {
        dataTaskPublisher(for: .popular(page: page), responseType: MoviesPage.self)
    }

    func getTopRated(page: Int? = nil) -> AnyPublisher<MoviesPage, Swift.Error> {
        dataTaskPublisher(for: .topRated(page: page), responseType: MoviesPage.self)
    }

    func getUpcoming(page: Int? = nil) -> AnyPublisher<MoviesPage, Swift.Error> {
        dataTaskPublisher(for: .upcoming(page: page), responseType: MoviesPage.self)
    }

    func getSimilar(movieID: Int, page: Int? = nil) -> AnyPublisher<MoviesPage, Swift.Error> {
        dataTaskPublisher(for: .similar(movieID: movieID, page: page), responseType: MoviesPage.self)
    }

    func getRecommendations(movieID: Movie.ID, page: Int? = nil) -> AnyPublisher<MoviesPage, Swift.Error> {
        dataTaskPublisher(for: .recommendations(movieID: movieID, page: page), responseType: MoviesPage.self)
    }

    func getReviews(movieID: Int, page: Int? = nil) -> AnyPublisher<ReviewPage, Swift.Error> {
        dataTaskPublisher(for: .reviews(movieID: movieID, page: page), responseType: ReviewPage.self)
    }

    func getMovie(id: Movie.ID) -> AnyPublisher<Movie.Details, Swift.Error> {
        dataTaskPublisher(for: .movie(id: id), responseType: Movie.Details.self)
    }
}
