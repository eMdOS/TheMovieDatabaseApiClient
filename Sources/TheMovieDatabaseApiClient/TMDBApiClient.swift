import Foundation
import Combine
import URLBuilder
import Extended
import Algebra

public final class TMDBApiClient {
    let session: URLSession

    public init(session: URLSession = .shared) {
        self.session = session
    }
}

extension TMDBApiClient {
    func dataTaskPublisher<Response: Decodable>(
        for endpoint: Endpoint,
        responseType: Response.Type,
        decoder: JSONDecoder = .default
    ) -> AnyPublisher<Response, Error> {
        let url = URLBuilder()
            .setScheme("https")
            .setHost("api.themoviedb.org")
            .setPath(endpoint.path)
            .setQuery(default_query)
            .addQuery(endpoint.query.or(.empty).filter(\.value.isNotNilOrEmpty))
            .build()

        return session
            .dataTaskPublisher(for: url)
            .subscribe(on: DispatchQueue.global())
            .map(\.data)
            .decode(type: Response.self, decoder: decoder)
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}
