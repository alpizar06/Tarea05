//
//  PokemonViewModel.swift
//  Tarea 05
//
//  Created by Daniel Alpizar on 18/9/21.
//

import SwiftUI

class PokemonViewModel: ObservableObject{
    @Published var pokemon = [Pokemon]()
    @Published var pokeinfo = Pokemon(identity:0, name: "", url: "", imageUrl: "", type: "", weight: 0, height: 0)
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
                if var response = try? JSONDecoder().decode(FirstResponse.self, from: data) {
                    DispatchQueue.main.async {
                        
                        for i in 0...(response.results.count - 1){
                            let number = response.results[i].url?.components(separatedBy: "/")
                            let id = number![6]
                            response.results[i].identity = Int(id)
                            response.results[i].type = "# \(id)"
                            response.results[i].imageUrl = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/\(id).png"

                        }
                        
                        self.pokemon = response.results
                    }
                    return
                }
            }
        }.resume()
    }
    
    func fetchPokemon (link: String){
        guard let url = URL(string: link) else {
            print("Your API end point is Invalid")
            objc_exception_rethrow()
        }
        let request = URLRequest(url: url)
        
        // The shared singleton session object.
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                if var response = try? JSONDecoder().decode(Pokemon.self, from: data) {
                    DispatchQueue.main.async {
                        response.imageUrl = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/\(response.identity ?? 1).png"
                        response.url = link
                        response.type = "# \(response.identity ?? 0)"
                        
                        self.pokeinfo = response
                        
                    }
                    return
                }
            }
        }.resume()
    }
}
