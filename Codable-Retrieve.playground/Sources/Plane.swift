import Foundation


public struct Plane: Codable {
    let manufacturer: String
    let model: String
    let seats: Int
    
    // 1 enum Codingkeys
    
    private enum CodingKeys: String, CodingKey {
        case manufacturer
        case model
        case seats
    }
    
    // 2
//
//    public init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.manufacturer = try container.decode(String.self, forKey: .manufacturer)
//        self.model = try container.decode(String.self, forKey: .model)
//        self.seats = try container.decode(Int.self, forKey: .seats)
//    }
    
    // 3
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.manufacturer, forKey: .manufacturer)
        try container.encode(self.model, forKey: .model)
        try container.encode(self.seats, forKey: .seats)
    }
    
}
