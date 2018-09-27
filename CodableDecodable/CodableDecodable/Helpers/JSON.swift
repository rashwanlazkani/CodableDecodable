//
//  JSONData.swift
//  Codable
//
//  Created by Rashwan Lazkani on 2017-11-18.
//  Copyright © 2017 Rashwan Lazkani. All rights reserved.
//

import Foundation

struct JSON {
    static let sport = "{ \"name\": \"Floorball\", \"id\": 1, \"someOptional\": null }"
    
    static let tv = "{ \"channel\": \"SVT1\", \"id\": 10, \"ChannelCode\": 1999 }"
    
    static let commupterParkings = "[ { \"Name\": \"Parking 1\", \"Id\": 100, \"ParkingLots\": [ { \"TotalCapacity\": 50, \"Lat\": 10.1, \"Id\": 100, \"ParkingCameras\": [ { \"Id\": 12002 } ], \"Lon\": 10.2, \"IsRestrictedByBarrier\": false } ] }, { \"Name\": \"Parking 2\", \"Id\": 100, \"ParkingLots\": [ { \"TotalCapacity\": 50, \"Lat\": 10.1, \"Id\": 100, \"ParkingCameras\": [ { \"Id\": 12002 } ], \"Lon\": 10.2, \"IsRestrictedByBarrier\": false } ] } ]"
    
    static let commupterParkingsTwo = "{ \"totalNumberOfParkings\": 150, \"parkings\": [ { \"Name\": \"Parking 1\", \"Id\": 100, \"ParkingLots\": [ { \"TotalCapacity\": 50, \"Lat\": 10.1, \"Id\": 100, \"ParkingCameras\": [ { \"Id\": 12002 } ], \"Lon\": 10.2, \"IsRestrictedByBarrier\": false } ] }, { \"Name\": \"Parking 2\", \"Id\": 100, \"ParkingLots\": [ { \"TotalCapacity\": 50, \"Lat\": 10.1, \"Id\": 100, \"ParkingCameras\": [ { \"Id\": 12002 } ], \"Lon\": 10.2, \"IsRestrictedByBarrier\": false } ] } ] }"
    
    static let person = "{ \"Name\": \"Some name\", \"Id\": 100, \"Age\": 50 }"
}
