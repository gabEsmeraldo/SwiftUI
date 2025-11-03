//
//  Model.swift
//  Desafio10
//
//  Created by Turma01-7 on 31/10/25.
//

import Foundation

struct carro: Decodable, Identifiable {
    let _id: String
    let _rev: String
    let id: String
    let imagem: String
    let marca: String
    let modelo: String
    let ano: Int
    let km: Int
    let automatico: Bool
    let cor: String
    let preco: Int
}
