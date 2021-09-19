//
//  PokemonInfo.swift
//  Tarea 05
//
//  Created by Daniel Alpizar on 19/9/21.
//

import SwiftUI
import Kingfisher

struct PokemonInfo: View {
    
    @ObservedObject var viewModel = PokemonViewModel()
    var pokemon: Pokemon
    
    var body: some View {
        VStack{
            KFImage(URL(string: pokemon.imageUrl ?? "none"))
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay(Circle().stroke(Color.white,lineWidth: 4))
                .shadow(radius: 7)
                Spacer()
            let name = String(pokemon.identity ?? 0)
            Text("ID #\(name)")
                .font(.title2)
            Text(pokemon.name)
                .font(.largeTitle)
            HStack{
                let weight = String(viewModel.pokeinfo.weight ?? 0)
                let height = String(viewModel.pokeinfo.height ?? 0)
                Text("Weight: " + weight)
                    .font(.subheadline)
                Text("Height: " + height)
                    .font(.subheadline)
            }
            
            Spacer()
        }
        .onAppear{
            self.cargeinfo()
        }
        
        
    }
    
    func cargeinfo(){
        viewModel.fetchPokemon(link: pokemon.url ?? "https://pokeapi.co/api/v2/pokemon/1/")
    }
}

struct PokemonInfo_Previews: PreviewProvider {
    static var previews: some View {
        PokemonInfo(pokemon: MOCK_POKEMON[3])
    }
}
