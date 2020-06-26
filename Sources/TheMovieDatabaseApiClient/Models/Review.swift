import Foundation

public struct Review: Decodable {
    public typealias ID = String

    public let id: Review.ID
    public let author: String
    public let content: String
    public let url: URL
}
