//
//  ViewModel.swift
//  rss-correct
//
//  Created by Marcell Leleszi on 2022. 04. 27..
//

import Foundation

class FeedViewModel: ObservableObject {
    @Published var rssItems = [RSSItem]()
    
    init() {
        self.fetchData()
    }

    func fetchData() {
        let feedParser = FeedParserService()
        feedParser.parseFeed(url: "http://developer.apple.com/news/rss/news.rss") { rssItems in
            DispatchQueue.main.async {
                self.rssItems = rssItems
            }
        }
    }
}
