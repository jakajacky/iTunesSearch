//
//  iTunesModels.swift
//  iTunesSearch
//
//  Created by 张小强 on 2018/7/9.
//  Copyright © 2018年 张小强. All rights reserved.
//

import Foundation

enum MediaType {
    case Song
    case Vedio
    case PodCast
}

struct Art: Codable {
    var artistId: Int?;       // 艺人ID
    var collectionArtistId: Int? // 艺人ID copy
    var artistName: String;     // 艺人名称
    var artworkUrl100: String;  // 作品预览图100x100
    var artworkUrl30: String;
    var artworkUrl60: String;
    var collectionId: Int;     // 专辑ID
    var collectionName: String;   // 专辑名称
    var collectionPrice: Float; // 专辑价格
    var country: String;          // 地区
    var kind: String;             // 类型song
    var previewUrl: String;       // 试听
    var primaryGenreName: String; // 风格Rock;
    var releaseDate: String;      // 发布日期1988-01-01T08:00:00Z
}

extension Art {
    private enum CodingKeys: String, CodingKey {
        case artistId
        case collectionArtistId
        case artistName
        case artworkUrl100
        case artworkUrl30
        case artworkUrl60
        case collectionId
        case collectionName
        case collectionPrice
        case country
        case kind
        case previewUrl
        case primaryGenreName
        case releaseDate
        
    }
}
