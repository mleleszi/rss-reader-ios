//
//  ContentView.swift
//  rss-correct
//
//  Created by Marcell Leleszi on 2022. 04. 27..
//

import SwiftUI

struct ContentView: View {
    @StateObject var feedViewModel = FeedViewModel()
        
    var body: some View {
        if feedViewModel.isLoading {
            LoadingView()
        } else {
            RSSListView(rssItems: feedViewModel.rssItems)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
