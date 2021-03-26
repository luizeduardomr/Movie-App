//
//  PopularMovies.swift
//  MovieDB
//
//  Created by Luiz Eduardo Mello dos Reis on 25/03/21.
//

import SwiftUI

struct PopularMovies: View {
    var movie: [Movies]
    
    var body: some View {
        VStack(alignment: .leading){
            Divider()
            Text("Popular Movies")
                .font(.headline)
                .fontWeight(.bold)
                .padding(.horizontal)
            
            ScrollView(){
                
                ForEach(filmes, id: \.self){filmes in
                    
                    HStack{
                        
                        Image(filmes.name)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80)
                            .cornerRadius(10)
                            .shadow(radius: 3)
                        
                        VStack(alignment: .leading){
                            
                            Text(filmes.name)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .padding(.bottom, 1.0)
                            
                            Text(filmes.description)
                                .font(.caption)
                                .foregroundColor(.gray)
                                .lineLimit(4)
                            
                            HStack{
                                Image(systemName: "star")
                                    .imageScale(.small)
                                    .foregroundColor(.gray)
                                    .padding(.trailing, -5.0)
                                
                                Text(filmes.rating)
                                    .font(.caption)
                                    .foregroundColor(.gray)
                                Spacer()
                            }
                            .padding(.top, 1.0)
                            Spacer()
                            
                        }
                        Spacer()
                    }
                    .padding(.horizontal)
                }
            }
        }
        Divider()
    }
}

struct PopularMovies_Previews: PreviewProvider {
    static var previews: some View {
        PopularMovies(movie: filmes)
    }
}
