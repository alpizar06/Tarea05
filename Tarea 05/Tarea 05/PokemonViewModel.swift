//
//  PokemonViewModel.swift
//  Tarea 05
//
//  Created by Daniel Alpizar on 18/9/21.
//

import SwiftUI

class PokemonViewModel: ObservableObject{
    @Published var pokemon = [Pokemon]()
    @Published var pokeinfo = Pokemon(id: 0, name: "", url: "", imageUrl: "", type: "", weight: 0, height: 0)
    //let baseUrl = "https://pokeapi.co/api/v2/pokemon?offset=0&limit=151"
    //let baseUrl = "https://pokedex-bb36f.firebaseio.com/pokemon.json"
    
    init() {
        loadData()
    }
    
    func loadData(){
        guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon?offset=0&limit=151") else {
            print("Your API end point is Invalid")
            return
        }
        let request = URLRequest(url: url)
        
        // The shared singleton session object.
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                if let response = try? JSONDecoder().decode(FirstResponse.self, from: data) {
                    DispatchQueue.main.async {
                        for poke in response.results{
                            self.fetchPokemon(link: poke.url!)
                            
                        }
                        self.pokemon = response.results
                    }
                    return
                }
            }
        }.resume()
    }
    
    func fetchPokemon(link: String){
        guard let url = URL(string: link) else {
            print("Your API end point is Invalid")
            return
        }
        let request = URLRequest(url: url)
        
        // The shared singleton session object.
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                if let response = try? JSONDecoder().decode(Pokemon.self, from: data) {
                    DispatchQueue.main.async {
                       
                        self.pokeinfo = response
                    }
                    return
                }
            }
        }.resume()
    }
}
