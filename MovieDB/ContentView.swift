//
//  ContentView.swift
//  MovieDB
//
//  Created by Luiz Eduardo Mello dos Reis on 25/03/21.
//

import SwiftUI

struct ContentView: View {
    @State private var input: String = ""
    var body: some View {
        VStack{
            HStack{
                Text("MovieDB")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
            }
            .padding()
            
            
            // Search bar
            HStack {
                HStack {
                    Image(systemName: "magnifyingglass")
                    TextField("search", text: $input)
                        .foregroundColor(.primary)
                }
            }
            .padding(EdgeInsets(top: 8, leading: 6, bottom: 8, trailing: 6))
            .foregroundColor(.secondary)
            .background(Color(.secondarySystemBackground))
            .cornerRadius(10.0)
            .padding(.horizontal)
            // End of the search bar
            
            Spacer()
            PlayingNow2(movie: filmes)
            PopularMovies(movie: filmes)
            
// My Search bar
//            HStack{
//                Image(systemName: "magnifyingglass")
//                    .imageScale(.small)
//                    .foregroundColor(.gray)
//
//                TextField("Search", text: $input)
//            }
//            .padding(.horizontal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

