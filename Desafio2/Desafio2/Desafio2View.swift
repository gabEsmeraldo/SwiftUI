//
//  Desafio2View.swift
//  Desafio2
//
//  Created by Turma01-7 on 22/10/25.
//

import SwiftUI

struct Desafio2View: View {
    var body: some View {
        HStack{
            Image("imagemHackATruck")
                .resizable()
                .frame(width:125, height: 125)
                .cornerRadius(100)
            Spacer()
            VStack{
                Text("HackaTruck")
                    .foregroundStyle(.red)
                Text("77 Universidades")
                    .foregroundStyle(.blue)
                Text("5 Regiões do Brasil")
                    .foregroundStyle(.yellow)
            }
                
        }
        .padding()
    }
}

#Preview {
    Desafio2View()
}
