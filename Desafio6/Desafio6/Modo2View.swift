//
//  Modo2View.swift
//  Desafio6
//
//  Created by Turma01-7 on 24/10/25.
//

import SwiftUI

struct Modo2View: View {
    @State private var name: String = ""
    var body: some View {
        NavigationStack{
            ZStack{
                Color.azul
                    .ignoresSafeArea()
                VStack{
                    Text("Modo 2")
                        .font(.title)
                        .foregroundStyle(.white)
                    Spacer()
                    VStack{
                        TextField("Insira seu nome", text: $name)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .padding(.top, 5)
                        Text("Bem Vindo, \(name)")
                            .padding(.bottom, 25)
                        NavigationLink(destination: Modo2secondView(name: name)){
                            Text("Acessar Tela")
                                .padding(8)
                                .background(.black.opacity(0.4))
                                .cornerRadius(10)
                        }
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
}

#Preview{
    Modo2View()
}
