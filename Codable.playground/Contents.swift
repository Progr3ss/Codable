import UIKit


import UIKit

//MARK: Dictionary
let json = """
{
    "manufacturer": "Cessna",
    "model": "172 Skyhawk",
    "seats": 4,
}
""".data(using: .utf8)!

//MARK: JSONDecoder instance
let decoder = JSONDecoder()
//Decoder pass in struct and data
let plane = try! decoder.decode(Plane.self, from: json)

print(plane.manufacturer)
print(plane.model)
print(plane.seats)

let encoder = JSONEncoder()

let reencodedJSON = try! encoder.encode(plane)

print(String(data: reencodedJSON, encoding: .utf8)!)
