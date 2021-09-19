//
//  PokemonCell.swift
//  Tarea 05
//
//  Created by Daniel Alpizar on 17/9/21.
//

import SwiftUI
import Kingfisher

struct PokemonCell: View {
    let pokemon: Pokemon
    var body: some View {
        ZStack{
            VStack(alignment: .leading){
                Text(pokemon.name.capitalized)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.top, 8)
                    .padding(.leading)
                    .id(UUID())
                HStack{
                    Text(pokemon.type ?? "none")
                        .font(.subheadline).bold()
                        .foregroundColor(.white)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .id(UUID())
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.white.opacity(0.25))
                        )
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 24)
                    
                    KFImage(URL(string: pokemon.imageUrl ?? "none"))
                        .resizable()
                        .scaledToFit()
                        .frame(width: 68, height: 68)
                        .padding([.bottom, .trailing], 4)
                        .id(UUID())
                }
            }
        }
        .background(Color.green)
        .cornerRadius(12)
        .shadow(color: .green, radius: 6, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
    }
}

struct PokemonCell_Previews: PreviewProvider {
    static var previews: some View {
        PokemonCell(pokemon: MOCK_POKEMON[3])
    }
}
