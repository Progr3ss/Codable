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
let plane = try! decoder.decode(PlaneDictionary.self, from: json)

//print(plane.manufacturer)
//print(plane.model)
//print(plane.seats)

let encoder = JSONEncoder()

let reencodedJSON = try! encoder.encode(plane)

//print(String(data: reencodedJSON, encoding: .utf8)!)



let json2 = """
[

  {
    "manufacturer": "Piper",
    "model": "PA-28 Cherokee",
    "seats": 4
 },
 {
   "manufacturer": "Cessna",
   "model": "172 Skyhawk",
   "seats": 4
 }

]


""".data(using: .utf8)

let json3 = """
{
  "planes":[

  {
    "manufacturer": "Piper",
    "model": "PA-28 Cherokee",
    "seats": 4
 },
 {
   "manufacturer": "Cessna",
   "model": "172 Skyhawk",
   "seats": 4
 }

 ]
}


""".data(using: .utf8)




let decoder3 = JSONDecoder()
let plane3 = try! decoder3.decode([String: [PlaneArray]].self, from: json3!)

print(plane3["planes"]![1])
let fleet = try! decoder.decode(Fleet.self, from: json3!)
//let planes4 = fleet.planes
print(fleet.planes[1])
