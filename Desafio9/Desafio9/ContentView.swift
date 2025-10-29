//
//  ContentView.swift
//  Desafio9
//
//  Created by Turma01-7 on 29/10/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        NavigationStack{
            VStack{
                ZStack{
                    AsyncImage(url: URL(string: "https://images.augustman.com/wp-content/uploads/sites/3/2022/01/03161832/harry-potter-5.jpeg")){ image in
                        image.image?.resizable()
                    }
                    .scaledToFit()
                    .blur(radius: 2)
                    .colorMultiply(.vermelho)
                    AsyncImage(url: URL(string: "https://1000logos.net/wp-content/uploads/2021/11/Gryffindor-Logo.png")){image in
                        image.image?.resizable()
                            .scaledToFit()
                    }
                }
                ScrollView() {
                    ForEach(viewModel.personagens){ personagem in
                        if(personagem.image != ""){
                            NavigationLink(destination: detailsView(personagem: personagem)){
                                HStack{
                                    AsyncImage(url: URL(string: personagem.image)){ image in
                                        image.image?.resizable()
                                    }
                                    .clipShape(Circle())
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 150, height: 150)
                                    Text(personagem.name)
                                        .font(.title)
                                    Spacer()
                                }
                                .padding([.vertical], 0)
                            }
                            .foregroundColor(.white)
                        }
                    }
                }
                .padding(10)
                .background(.vermelho)
                .ignoresSafeArea(edges: .bottom)
            }
            .background(.vermelho)
        }
        .onAppear(perform: {
            viewModel.fetch()
        })
    }
}

#Preview {
    ContentView()
}
