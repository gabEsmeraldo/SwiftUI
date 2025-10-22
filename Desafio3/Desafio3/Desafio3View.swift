//
//  Desafio3View.swift
//  Desafio3
//
//  Created by Turma01-7 on 22/10/25.
//

import SwiftUI

struct Desafio3View: View {
    @State private var name: String = ""
    @State private var AlertIsOn: Bool = false
    var body: some View {
        ZStack{
            Image("Caminhas")
                .resizable()
                .layoutPriority(-100)
                .scaledToFill()
                .padding(0)
                .blur(radius: 8)
                .opacity(0.5)
            VStack{
                Text("Bem Vindo, \(name)")
                    .font(.title)
                TextField("Enter your name", text: $name)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight:30)
                    .font(.title2)
                    .cornerRadius(15)
                
                Spacer()
                Image("hackatruckimage")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 250)
                Image("Caminhas-2")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 250)
                Spacer()
                Button("Entrar"){
                    AlertIsOn = true
                }
            }
            .layoutPriority(100)
            .alert(isPresented: $AlertIsOn) {
                Alert(
                title: Text("ALERTA !")
                    .font(.title),
                message: Text("Você ira iniciar o desafio da aula agora")
                    .font(.subheadline),
                dismissButton: .default(Text("Vamos lá!"))
                )
            }
        }
        .padding(0)
    }
}
#Preview {
    Desafio3View()
}
