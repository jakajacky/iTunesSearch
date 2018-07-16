//
//  iModels.swift
//  iTunesSearch
//
//  Created by 张小强 on 2018/6/28.
//  Copyright © 2018年 张小强. All rights reserved.
//

import Foundation

struct Plane : Codable {
    var manufacturer: String
    var model: String
    var seats: Int
    
    private enum CodingKeys: String, CodingKey {
        case manufacturer
        case model = "model"
        case seats
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.manufacturer = try container.decode(String.self, forKey: Plane.CodingKeys.manufacturer)
        self.model = try container.decode(String.self, forKey: Plane.CodingKeys.model)
        self.seats = try container.decode(Int.self, forKey: Plane.CodingKeys.seats)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.manufacturer, forKey: Plane.CodingKeys.manufacturer)
        try container.encode(self.model, forKey: Plane.CodingKeys.model)
        try container.encode(self.seats, forKey: Plane.CodingKeys.seats)
    }
}

struct PlaneList: Codable {
    var planes: [Plane]
}

extension CodingUserInfoKey {
    static let colorEncodingStrategy = CodingUserInfoKey(rawValue: "colorEncodingStrategy")!
}
