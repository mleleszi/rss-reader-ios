//
//  FeedParserService.swift
//  rss-correct
//
//  Created by Marcell Leleszi on 2022. 04. 27..
//

import Foundation

struct RSSItem: Identifiable {
    var id = UUID()
    var title: String
    var description: String
    var pubDate: String
}
