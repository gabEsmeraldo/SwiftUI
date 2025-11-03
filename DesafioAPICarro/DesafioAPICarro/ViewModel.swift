//
//  ViewModel.swift
//  Desafio10
//
//  Created by Turma01-7 on 31/10/25.
//

import Foundation

class ViewModel: ObservableObject {
    
    @Published var carrosArray: [carro] = []
    
    func fetch() {
        guard let url = URL(string: "http://127.0.0.1:1880/leituraGabriel") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
                
            guard let data = data, error == nil else{
                return
            }
            
            do {
                
                let parsed = try JSONDecoder().decode([carro].self, from: data)
                
                DispatchQueue.main.async {
                    
                    self?.carrosArray = parsed
                }
            }
            
            catch {
                print(error)
            }
        }
        
        task.resume()
    }
}
