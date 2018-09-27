//
//  CommunterParking.swift
//  Trafikappen
//
//  Created by Rashwan Lazkani on 2017-07-21.
//  Copyright © 2017 Rashwan Lazkani. All rights reserved.
//

import Foundation

// Getting a nested object array
struct CommuterParking: Codable {
    let id: Int
    let name: String
    let parkingLots: [ParkingLots]
    
    private enum CodingKeys: String, CodingKey {
        case id = "Id", name = "Name", parkingLots = "ParkingLots"
    }
}

struct ParkingLots: Codable {
    let totalCapacity: Int?
    let lat: Double
    let lon: Double
    
    private enum CodingKeys: String, CodingKey {
        case totalCapacity = "TotalCapacity", lat = "Lat", lon = "Lon"
    }
}
