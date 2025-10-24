//
//  Modo1View.swift
//  Desafio6
//
//  Created by Turma01-7 on 24/10/25.
//

import SwiftUI

struct Modo1View: View {
    var body: some View {
        ZStack{
            Color.azul
                .ignoresSafeArea()
            VStack{
                Text("Modo 1")
                    .font(.title)
                    .foregroundStyle(.white)
                Spacer()
                VStack{
                    Text("Nome: Gabriel")
                    Text("Sobrenome: Esmeraldo")
                }
                .foregroundColor(.white)
                .frame(width:250, height:150)
                .background(.pink)
                .cornerRadius(10)
                Spacer()
            }
        }
    }
}

#Preview {
    Modo1View()
}
