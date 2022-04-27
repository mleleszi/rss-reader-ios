//
//  ViewModel.swift
//  rss-correct
//
//  Created by Marcell Leleszi on 2022. 04. 27..
//

import Foundation

class FeedViewModel: ObservableObject {
    @Published var rssItems = [RSSItem]()
    @Published var isLoading = false
    
    init() {
        self.fetchData()
    }

    func fetchData() {
        self.isLoading = true
        let feedParser = FeedParserService()
        feedParser.parseFeed(url: "http://developer.apple.com/news/rss/news.rss") { rssItems in
            DispatchQueue.main.async {
                self.isLoading = false
                self.rssItems = rssItems
            }
        }
    }
}
