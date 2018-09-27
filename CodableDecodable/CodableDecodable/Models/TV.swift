//
//  Sport.swift
//  Codable
//
//  Created by Rashwan Lazkani on 2017-11-18.
//  Copyright © 2017 Rashwan Lazkani. All rights reserved.
//

import Foundation

// One mismatch codingKey 'code' need all CodingKeys
struct TV: Codable {
    let id: Int
    let channel: String
    let code: Double // mismatch key
    
    private enum CodingKeys: String, CodingKey {
        case id = "id", channel = "channel", code = "ChannelCode"
    }
}
