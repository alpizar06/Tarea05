//
//  test.swift
//  Tarea 05
//
//  Created by Daniel Alpizar on 18/9/21.
//

import Foundation
struct FirstResponse: Decodable{
    let count: Int
    let next: String
    let previous: String?
    var results: [Pokemon]
}
