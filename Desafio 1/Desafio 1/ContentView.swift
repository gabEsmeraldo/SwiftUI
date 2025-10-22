//
//  ContentView.swift
//  Desafio 1
//
//  Created by Turma01-7 on 22/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading){
                Text("Turtle Rock")
                    .font(.title)
                HStack{
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
            }
            
        }
        .padding()
        VStack {
            VStack(alignment: .leading){
                Text("Ibirapuera")
                    .font(.title)
                HStack{
                    Text("Parque Ibirapuera Nacional")
                        .font(.subheadline)
                    Spacer()
                    Text("São Paulo")
                        .font(.subheadline)
                }
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
