import Foundation

public struct ProductionCompany: Decodable {
    public let id: Int
    public let name: String
    public let logoPath: String?
    public let originCountry: String
}

private extension ProductionCompany {
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case logoPath = "logo_path"
        case originCountry = "origin_country"
    }
}
