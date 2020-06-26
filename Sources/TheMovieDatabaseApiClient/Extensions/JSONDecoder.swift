import Foundation

extension JSONDecoder {
    static let `default`: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .formatted(.yearMonthDay)
        return decoder
    }()
}
