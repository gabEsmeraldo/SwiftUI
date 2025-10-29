//
//  detailsView.swift
//  Desafio9
//
//  Created by Turma01-7 on 29/10/25.
//

import SwiftUI

struct detailsView: View {
    var personagem: HaPo
    var body: some View {
        ZStack{
            Color.vermelho
                .ignoresSafeArea()
            VStack(){
                AsyncImage(url: URL(string: personagem.image)){image in image.image?.resizable()}
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height:300)
                    .scaledToFit()
                    .padding(25)
                VStack{
                    Text("\(personagem.name)")
                        .font(.title)
                        .fontWeight(.bold)
                    Text("Alive: \(personagem.alive ? "True" : "False")").font(.title)
                    Text("Gender: \(personagem.gender)").font(.title)
                    Text("Ancestry: \(personagem.ancestry)").font(.title)
                    personagem.wizard ? Text("Wizard").font(.title) : Text("Not a Wizard").font(.title)
                }
                .foregroundStyle(.white)
                Spacer()
            }
        }
    }
}

#Preview {
    detailsView(personagem: HaPo(id: "1", name: "Harry", gender: "Man", wizard: true, ancestry: "half-blood", alive: true, image: "https://1000logos.net/wp-content/uploads/2021/11/Gryffindor-Logo.png"))
}
