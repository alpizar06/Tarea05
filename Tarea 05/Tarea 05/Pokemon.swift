//
//  Pokemon.swift
//  Tarea 05
//
//  Created by Daniel Alpizar on 18/9/21.
//

import Foundation
struct Pokemon: Decodable, Identifiable{
    let id: Int?
    let name: String
    let url: String?
    let imageUrl: String?
    let type: String?
    let weight: Int?
    let height: Int?
}


let MOCK_POKEMON: [Pokemon] = [
    .init(id: 0,
          name: "Bulbasaur",
          url: "https://pokeapi.co/api/v2/pokemon/1/",
          imageUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png",
          type: "Poison",
          weight: 0,
          height: 0),
    .init(id: 1,
          name: "Ivysaur",
          url: "https://pokeapi.co/api/v2/pokemon/2/",
          imageUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/2.png",
          type: "Poison",
          weight: 0,
          height: 0),
    .init(id: 2,
          name: "Venasaur",
          url: "https://pokeapi.co/api/v2/pokemon/3/",
          imageUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/3.png",
          type: "Poison",
          weight: 0,
          height: 0),
    .init(id: 3,
          name: "Charmander",
          url: "https://pokeapi.co/api/v2/pokemon/4/",
          imageUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/4.png",
          type: "Fire",
          weight: 0,
          height: 0),
    .init(id: 4,
          name: "Charmeleon",
          url: "https://pokeapi.co/api/v2/pokemon/5/",
          imageUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/5.png",
          type: "Fire",
          weight: 0,
          height: 0),
    .init(id: 5,
          name: "Charizard",
          url: "https://pokeapi.co/api/v2/pokemon/6/",
          imageUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/6.png",
          type: "Fire",
          weight: 0,
          height: 0)
]
