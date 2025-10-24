//
//  AzulView.swift
//  Desafio5
//
//  Created by Turma01-7 on 24/10/25.
//

import SwiftUI

struct AzulView: View {
    var body: some View {
        ZStack{
            Color.blue
                .ignoresSafeArea()
            ZStack{
                Circle()
                Image(systemName: "paintbrush.pointed")
                    .resizable()
                    .frame(width: 250, height:250)
                    .blendMode(.destinationOut)
            }.compositingGroup()
                .padding(40)
        }
    }
}

#Preview {
    AzulView()
}
