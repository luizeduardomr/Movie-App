//
//  Movies.swift
//  MovieDB
//
//  Created by Luiz Eduardo Mello dos Reis on 25/03/21.
//

import Foundation
import SwiftUI

struct Movies: Hashable, Codable {
    var name: String
    var rating: String
    var description: String
}

var filmes : [Movies] = [filme1, filme2, filme3, filme4, filme5, filme6]


let filme1 = Movies(name: "Another Round", rating: "8.4", description: "Long ago, in the fantasy world of Kumandra, humans and dragons lived together in harmony. But when an evil force threatened the land, the dragons sacrificed themselves to save humanity. Now, 500 years later, that same evil has returned and it’s up to a lone warrior, Raya, to track down the legendary last dragon to restore the fractured land and its divided people.")

let filme2 = Movies(name: "Godzilla vs. Kong", rating: "6.7", description: "In a time when monsters walk the Earth, humanity’s fight for its future sets Godzilla and Kong on a collision course that will see the two most powerful forces of nature on the planet collide in a spectacular battle for the ages.")

let filme3 = Movies(name: "Raya and the Last Dragon", rating: "8.3", description: "Long ago, in the fantasy world of Kumandra, humans and dragons lived together in harmony. But when an evil force threatened the land, the dragons sacrificed themselves to save humanity. Now, 500 years later, that same evil has returned and it’s up to a lone warrior, Raya, to track down the legendary last dragon to restore the fractured land and its divided people.")

let filme4 = Movies(name: "Monster Hunter", rating: "9.3", description: "Monster HunterMonster HunterMonster HunterMonster Hunter")

let filme5 = Movies(name: "Nomadland", rating: "1.3", description: "NomadlandNomadlandNomadlandNomadlandNomadlandNomadlandNomadlandNomadlandNomadlandNomadlandNomadlandNomadlandNomadlandNomadlandNomadland")

let filme6 = Movies(name: "The Marksman", rating: "10.0", description: "The MarksmanThe Marksman")
