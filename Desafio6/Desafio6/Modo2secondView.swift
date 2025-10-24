//
//  Modo2secondView.swift
//  Desafio6
//
//  Created by Turma01-7 on 24/10/25.
//

import SwiftUI

struct Modo2secondView: View {
    var name: String = ""
    var body: some View {
        ZStack{
            Color.azul
                .ignoresSafeArea()
            VStack{
                Text("Modo 2")
                    .font(.title)
                    .foregroundStyle(.white)
                Spacer()
                Text("Volte, \(name)!!")
                    .foregroundColor(.white)
                    .frame(width:200, height:75)
                    .background(.pink)
                    .cornerRadius(10)
                Spacer()
            }
        }
    }
}

#Preview {
    Modo2secondView()
}
