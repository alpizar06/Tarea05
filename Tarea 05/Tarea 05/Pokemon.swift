//
//  Pokemon.swift
//  Tarea 05
//
//  Created by Daniel Alpizar on 18/9/21.
//

import Foundation
struct Pokemon: Decodable, Identifiable{
    var id = UUID()
    var identity: Int?
    var name: String
    var url: String?
    var imageUrl: String?
    var type: String?
    var weight: Int?
    var height: Int?
    
    enum CodingKeys: String, CodingKey {
        case identity = "id"
        case name = "name"
        case url = "url"
        case imageUrl =  "imageUrl"
        case type = "type"
        case weight = "weight"
        case height = "height"
    }
}


let MOCK_POKEMON: [Pokemon] = [
    .init(identity:1,
          name: "Bulbasaur",
          url: "https://pokeapi.co/api/v2/pokemon/1/",
          imageUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png",
          type: "Poison",
          weight: 0,
          height: 0),
    .init(identity:1,
          name: "Ivysaur",
          url: "https://pokeapi.co/api/v2/pokemon/2/",
          imageUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/2.png",
          type: "Poison",
          weight: 0,
          height: 0),
    .init(identity:1,
          name: "Venasaur",
          url: "https://pokeapi.co/api/v2/pokemon/3/",
          imageUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/3.png",
          type: "Poison",
          weight: 0,
          height: 0),
    .init(identity:1,
          name: "Charmander",
          url: "https://pokeapi.co/api/v2/pokemon/4/",
          imageUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/4.png",
          type: "Fire",
          weight: 0,
          height: 0),
    .init(identity:1,
          name: "Charmeleon",
          url: "https://pokeapi.co/api/v2/pokemon/5/",
          imageUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/5.png",
          type: "Fire",
          weight: 0,
          height: 0),
    .init(identity:1,
          name: "Charizard",
          url: "https://pokeapi.co/api/v2/pokemon/6/",
          imageUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/6.png",
          type: "Fire",
          weight: 0,
          height: 0)
]
