//
//  Person.swift
//  Codable
//
//  Created by Rashwan Lazkani on 2017-11-18.
//  Copyright © 2017 Rashwan Lazkani. All rights reserved.
//

import Foundation

// Getting nil
struct Person: Codable {
    let id: Int
    let name: String
    let age: Int
    let someOptional: Double?
    
    private enum CodingKeys: String, CodingKey {
        case id = "Id", name = "Name", age = "Age", someOptional = "SomeOptional"
    }
}
