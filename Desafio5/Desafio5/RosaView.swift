//
//  RosaView.swift
//  Desafio5
//
//  Created by Turma01-7 on 24/10/25.
//

import SwiftUI

struct RosaView: View {
    var body: some View {
        ZStack{
            Color.pink
                .ignoresSafeArea()
            ZStack{
                Circle()
                Image(systemName: "paintbrush")
                    .resizable()
                    .frame(width: 250, height:250)
                    .blendMode(.destinationOut)
            }.compositingGroup()
                .padding(40)
        }
    }
}

#Preview {
    RosaView()
}
