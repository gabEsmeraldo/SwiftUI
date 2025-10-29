//
//  Model.swift
//  Desafio9
//
//  Created by Turma01-7 on 29/10/25.
//

import Foundation

struct HaPo: Decodable, Identifiable{
    let id: String
    let name: String
    let gender: String
    let wizard: Bool
    let ancestry: String
    let alive: Bool
    let image: String
}
