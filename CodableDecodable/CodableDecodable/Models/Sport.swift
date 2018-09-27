//
//  Sport.swift
//  Codable
//
//  Created by Rashwan Lazkani on 2017-11-18.
//  Copyright © 2017 Rashwan Lazkani. All rights reserved.
//

import Foundation

// Matching without CodingKeys
struct Sport: Codable {
    let id: Int
    let name: String
    let someOptional: Double?
}
