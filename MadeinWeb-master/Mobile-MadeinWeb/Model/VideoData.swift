//
//  videoData.swift
//  MadeWebTeste
//
//  Created by Paulo Danilo Conceição Lima on 15/08/21.
//

import Foundation

struct VideoData: Decodable {
    let kind: String
    let items: [items]
}

struct items: Decodable {
    let snippet: snippet
}

struct snippet: Decodable {
    let title: String
    let description: String
    let thumbnails: thumbnails
}

struct thumbnails: Decodable {
    let `default`: `default`
}

struct `default`: Decodable {
    let url: String
}
