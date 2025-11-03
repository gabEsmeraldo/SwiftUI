//
//  ViewModel.swift
//  Desafio10
//
//  Created by Turma01-7 on 03/11/25.
//

import Foundation

class ViewModel: ObservableObject {
    
    @Published var aeroportos: [Airport] = []
    
    func fetch() {
        guard let url = URL(string: "http://127.0.0.1:1880/leituraGabriel") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
                
            guard let data = data, error == nil else{
                return
            }
            
            do {
                
                let parsed = try JSONDecoder().decode([Airport].self, from: data)
                
                DispatchQueue.main.async {
                    
                    self?.aeroportos = parsed
                }
            }
            
            catch {
                print(error)
            }
        }
        
        task.resume()
    }
}
