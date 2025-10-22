//
//  Desafio1View.swift
//  Desafio 1
//
//  Created by Turma01-7 on 22/10/25.
//

import SwiftUI

struct Desafio1View: View {
    var body: some View {
        VStack{
            HStack{
                Rectangle()
                    .frame(width: 110, height:110)
                    .foregroundColor(.red)
                Spacer()
                Rectangle()
                    .frame(width: 110, height:110)
                    .foregroundColor(.blue)
            }
            Spacer()
            HStack{
                Rectangle()
                    .frame(width: 110, height:110)
                    .foregroundColor(.green)
                Spacer()
                Rectangle()
                    .frame(width: 110, height:110)
                    .foregroundColor(.yellow)
            }
        }
        .padding()
    }
}

#Preview {
    Desafio1View()
}
