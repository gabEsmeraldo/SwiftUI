//
//  DefaultView.swift
//  Desafio5
//
//  Created by Turma01-7 on 24/10/25.
//

import SwiftUI

struct DefaultView: View {
    var body: some View {
        TabView{
            RosaView()
                .tabItem {
                    Label("Rosa", systemImage: "paintbrush.fill")
                }
            AzulView()
                .tabItem {
                    Label("Azul", systemImage: "paintbrush.pointed.fill")
                }
            CinzaView()
                .tabItem {
                    Label("Cinza", systemImage: "paintpalette.fill")
                }

            ListView()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
        }
        .onAppear(){
            UITabBar.appearance().backgroundColor = .white
        }
        .tint(.blue)
        
    }
}

#Preview {
    DefaultView()
}
