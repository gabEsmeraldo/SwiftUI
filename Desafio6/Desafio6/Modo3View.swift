//
//  Modo3View.swift
//  Desafio6
//
//  Created by Turma01-7 on 24/10/25.
//

import SwiftUI

struct Modo3View: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack{
            Color.azul
                .ignoresSafeArea()
            VStack{
                Text("Sheet View")
                    .padding(30)
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
    Modo3View()
}
