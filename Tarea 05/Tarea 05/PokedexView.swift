//
//  PokedexView.swift
//  Tarea 05
//
//  Created by Daniel Alpizar on 17/9/21.
//

import SwiftUI

struct PokedexView: View {
    private let gridItems = [GridItem(.flexible()),GridItem(.flexible())]
    @ObservedObject var viewModel = PokemonViewModel()
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: gridItems, spacing: 16) {
                    ForEach(viewModel.pokemon){ pokemon in
                        NavigationLink(
                            destination: PokemonInfo(pokemon: pokemon)){
                            PokemonCell(pokemon: pokemon)
                            }
                    }
                }
            }
            .navigationTitle("Pokedex")
        }
        
    }
}

struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
    }
    
    // https://assets.pokemon.com/assets/cms2/img/pokedex/detail/001.png
    //https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png
}
