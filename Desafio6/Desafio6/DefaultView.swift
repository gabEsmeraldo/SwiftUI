//
//  DefaultView.swift
//  Desafio6
//
//  Created by Turma01-7 on 24/10/25.
//

import SwiftUI

struct DefaultView: View {
    @State private var showingSheet = false
    var body: some View {
        NavigationStack{
            ZStack{
                Color.azul
                    .ignoresSafeArea()
                VStack{
                    Image("hackatruckimage")
                        .padding(-30)
                    Spacer()
                    VStack{
                        NavigationLink(destination: Modo1View()){
                            Text("Modo 1")
                                .frame(width: 180, height:80)
                                .background(.pink)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        NavigationLink(destination: Modo2View()){
                            Text("Modo 2")
                                .frame(width: 180, height:80)
                                .background(.pink)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        Button("Modo 3"){
                            showingSheet.toggle()
                        }
                            .frame(width: 180, height:80)
                            .background(.pink)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .sheet(isPresented: $showingSheet){
                                Modo3View()
                            }
                    }
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    DefaultView()
}
