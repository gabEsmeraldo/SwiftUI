//
//  CinzaView.swift
//  Desafio5
//
//  Created by Turma01-7 on 24/10/25.
//

import SwiftUI

struct CinzaView: View {
    var body: some View {
        ZStack{
            Color.gray
                .ignoresSafeArea()
            ZStack{
                Circle()
                Image(systemName: "paintpalette")
                    .resizable()
                    .frame(width: 250, height:250)
                    .blendMode(.destinationOut)
            }.compositingGroup()
                .padding(40)
        }
    }
}

#Preview {
    CinzaView()
}
