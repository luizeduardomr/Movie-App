//
//  PlayingNow2.swift
//  MovieDB
//
//  Created by Luiz Eduardo Mello dos Reis on 25/03/21.
//

import SwiftUI

struct PlayingNow2: View {
    var movie: [Movies]
    
    var body: some View {
        VStack{
            Divider()
            HStack(){
                Text("Now Playing")
                    .font(.headline)
                Spacer()
                Text("See All")
                    .font(.caption)
            }
            .padding([.top, .leading, .trailing])
            ScrollView(.horizontal){
                HStack{
                    ForEach(filmes, id: \.self){filmes in
                        VStack(alignment: .leading){
                            Image(filmes.name)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 170)
                                .cornerRadius(10)
                                .shadow(radius: 10)
                            
                            Text(filmes.name)
                                .fontWeight(.semibold)
                                .lineLimit(1)
                                .padding(.horizontal)
                            
                            HStack{
                                Image(systemName: "star")
                                    .imageScale(.small)
                                    .foregroundColor(.blue)
                                    .padding(.trailing, -5.0)
                                
                                Text(filmes.rating)
                                    .font(.subheadline)
                                    .foregroundColor(.blue)
                                
                            }
                            .padding(.horizontal)
                        }
                        .frame(width: 170)
                    }
                }
                .padding()
            }
        }
    }
}

struct PlayingNow2_Previews: PreviewProvider {
    static var previews: some View {
        PlayingNow2(movie: filmes)
    }
}
