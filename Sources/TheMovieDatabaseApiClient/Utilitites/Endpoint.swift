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
