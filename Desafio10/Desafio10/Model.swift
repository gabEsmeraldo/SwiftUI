//
//  Model.swift
//  Desafio10
//
//  Created by Turma01-7 on 03/11/25.
//

import Foundation

struct Airport: Decodable, Identifiable{
    let _id: String
    let _rev: String
    let id: Int?
    let nome: String
    let endereco: String
    let portoes: Array<String>
}
