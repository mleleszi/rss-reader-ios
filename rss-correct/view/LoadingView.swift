//
//  LoadingView.swift
//  rss-correct
//
//  Created by Marcell Leleszi on 2022. 04. 27..
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        VStack(spacing: 20)  {
            ProgressView()
            Text("Fetching the articles ...")
                .foregroundColor(.gray)
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
