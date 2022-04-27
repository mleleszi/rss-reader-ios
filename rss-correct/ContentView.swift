//
//  ContentView.swift
//  rss-correct
//
//  Created by Marcell Leleszi on 2022. 04. 27..
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = FeedViewModel()
        
    var body: some View {
        VStack {
            List {
                ForEach(viewModel.rssItems) { item in
                    Text(item.title)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
