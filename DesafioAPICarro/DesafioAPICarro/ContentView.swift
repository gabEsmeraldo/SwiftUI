//
//  ContentView.swift
//  Desafio10
//
//  Created by Turma01-7 on 31/10/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        VStack {
            ForEach($viewModel.carrosArray){ carro in
                Text(carro.modelo)
            }
        }
        .onAppear(perform: {
            viewModel.fetch()
        })
        .padding()
    }
}

#Preview {
    ContentView()
}
