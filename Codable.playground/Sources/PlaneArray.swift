import Foundation


public struct Fleet: Decodable {
    public var planes: [PlaneArray]
}
public struct PlaneArray: Codable {

    public var manufacturer: String
    public var model: String
    public var seats: Int

}
