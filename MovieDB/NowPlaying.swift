//
//  NowPlaying.swift
//  MovieDB
//
//  Created by Luiz Eduardo Mello dos Reis on 25/03/21.
//

import SwiftUI

struct NowPlaying: View {
    var body: some View {
        VStack {
            Divider()
            HStack(){
                Text("Now Playing")
                    .font(.headline)
                Spacer()
                Text("See All")
                    .font(.caption)
            }
            .padding([.top, .leading, .trailing])
            ScrollView{
                HStack{
                    Spacer()
                        .padding(100)
                    VStack{
                        Image("1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 170)
                            .cornerRadius(10)
                            .shadow(radius: 10)
                        Text("Gabriel Inferno Part lll")
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.leading)
                            .frame(width: 150.0, height: 30.0)
                        HStack{
                            Image(systemName: "star")
                                .imageScale(.small)
                                .foregroundColor(.gray)
                            Text("3.6")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                            Spacer()
                        }
                    }
                    VStack{
                        Image("3")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 170)
                            .cornerRadius(10)
                            .shadow(radius: 10)
                        Text("Gabriel Inferno Part lll")
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.leading)
                            .frame(width: 150.0, height: 30.0)
                        HStack{
                            Image(systemName: "star")
                                .imageScale(.small)
                                .foregroundColor(.gray)
                            Text("3.6")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                            Spacer()
                        }
                    }
                    .padding()
                    
                    VStack{
                        Image("4")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 170)
                            .cornerRadius(10)
                            .shadow(radius: 10)
                        Text("Gabriel Inferno Part lll")
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.leading)
                            .frame(width: 150.0, height: 30.0)
                        HStack{
                            Image(systemName: "star")
                                .imageScale(.small)
                                .foregroundColor(.gray)
                            Text("3.6")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                            Spacer()
                        }
                    }
                    .padding()
                }
            }
            .padding(0)
            Divider()
        }
    }
}

struct NowPlaying_Previews: PreviewProvider {
    static var previews: some View {
        NowPlaying()
    }
}
