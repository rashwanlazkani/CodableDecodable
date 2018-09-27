//
//  CommuterParkingTwo.swift
//  CodableDecodable
//
//  Created by Rashwan Lazkani on 2018-05-10.
//  Copyright © 2018 Rashwan Lazkani. All rights reserved.
//

import Foundation

import Foundation

// Getting a nested object array
struct CommuterParkingTwo: Codable {
    let totalNumberOfParkings: Int
    let id: Int
    let name: String
    let parkingLots: [ParkingLots]
    
    private enum CodingKeys: String, CodingKey {
        case totalNumberOfParkings = "TotalNumberOfParkings", id = "Id", name = "Name", parkingLots = "ParkingLots"
    }
}

