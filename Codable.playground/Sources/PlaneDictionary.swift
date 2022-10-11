import Foundation

public struct PlaneDictionary: Codable {
    public var manufacturer: String
    public var model: String
    public var seats: Int
    
    /* Conformance to Decodable and Encodable is automatically synthesized,
       so this code isn't necessary.
     */
    
    // 1 CodingKeys [String, CodingKey]
    private enum CodingKeys: String, CodingKey {
        case manufacturer
        case model
        case seats
    }
    // 2 init
    public init(from decoder: Decoder) throws {
        //create a container
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.manufacturer = try container.decode(String.self, forKey: .manufacturer)
        self.model = try container.decode(String.self, forKey: .model)
        self.seats = try container.decode(Int.self, forKey: .seats)
    }
    // 3 encode func
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.manufacturer, forKey: .manufacturer)
        try container.encode(self.model, forKey: .model)
        try container.encode(self.seats, forKey: .seats)
    }
    
}
