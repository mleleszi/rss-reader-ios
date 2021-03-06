//
//  RSSListItemView.swift
//  rss-correct
//
//  Created by Marcell Leleszi on 2022. 04. 27..
//

import SwiftUI

struct RSSListItemView: View {
    let rssItem: RSSItem
    

    var body: some View {
       
            VStack(alignment: .leading, spacing: 15) {
                Text(rssItem.title)
                    .font(.headline)
                Text(rssItem.pubDate)
                    .font(.footnote)
                HTMLView(text: rssItem.description)
        
            }.padding()
            }
        
    }

