//
//  ContentView.swift
//  tutorials
//
//  Created by sadavalli on 4/24/20.
//  Copyright © 2020 sadavalli. All rights reserved.
//

import SwiftUI
import Combine

struct ContentView: View {
    @ObservedObject var viewModel: ViewModal = ViewModal()

    var body: some View {
        NavigationView {
            List(viewModel.results) { (result) in
                HStack {
                    AlbumImageView(url: result.artworkUrl100)
                    
                    VStack(alignment: .leading, spacing: 10, content: {
                        Text(result.name)
                            .font(.headline)
                        Text(result.artistName)
                            .font(.subheadline)
                        Spacer()
                    })
                }
            }
            .navigationBarTitle("Top albums", displayMode: .inline)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


