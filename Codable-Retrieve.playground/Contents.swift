import UIKit
import Foundation

let json = """
{
    "manufacturer": "Cessna",
    "model": "172 Skyhawk",
    "seats": 4,
}
""".data(using: .utf8)!



//1
let decoder = JSONDecoder()
// 2 user the decoder
let plane = try  decoder.decode(Plane.self, from: json)
//3 use the results
//print(plane)


// 1
let encoder = JSONEncoder()

//let encodedPlane = try! encoder.encode(plane)
//print(String(data: encodedPlane, encoding: .utf8))
let encodedPlane = try encoder.encode(plane)
print(String(data: encodedPlane, encoding: .utf8))
