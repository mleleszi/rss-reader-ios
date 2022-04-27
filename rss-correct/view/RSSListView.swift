//
//  RSSListView.swift
//  rss-correct
//
//  Created by Marcell Leleszi on 2022. 04. 27..
//

import SwiftUI

struct RSSListView: View {
    let rssItems: [RSSItem]
    
    @State private var searchText: String = ""
    
    var filteredItems: [RSSItem] {
        if searchText.count == 0 {
            return rssItems
        } else  {
            return rssItems.filter { $0.title.lowercased().contains(searchText.lowercased())
            }
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(filteredItems) { item in
                    NavigationLink {
                        RSSListItemView(rssItem: item)
                    } label: {
                        Text(item.title)
                            .padding()
                    }
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Developer News")
            .searchable(text: $searchText)
        }
    }
}

