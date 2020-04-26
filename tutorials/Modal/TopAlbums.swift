//
//  TopAlbums.swift
//  tutorials
//
//  Created by sadavalli on 4/24/20.
//  Copyright © 2020 sadavalli. All rights reserved.
//

import Foundation
struct TopAlbums: Decodable {
    let feed: Feed
}

struct Feed: Decodable {
    let results: [AlbumResults]
}

struct AlbumResults: Decodable, Identifiable {
    let id = UUID()
    
    let name: String
    let artistName: String
    let artworkUrl100: String
    let url: String
    let genres: [Genres]
    let copyright: String
}

struct Genres: Decodable {
    let name: String
}
