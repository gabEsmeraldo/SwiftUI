//
//  PlayView.swift
//  Desafio7
//
//  Created by Turma01-7 on 27/10/25.
//

import SwiftUI

struct PlayView: View {
    var name: String = ""
    var artist: String = ""
    var capa: String = ""
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.black]), startPoint: .top, endPoint: .center)
                .ignoresSafeArea()
            VStack{
                AsyncImage(url: URL(string: capa)){image in
                    image.resizable()
                }placeholder: {
                    ProgressView()
                }
                .frame(width:235, height:235)
                .padding([.top], 50)
                Text(name)
                    .font(.title)
                    .colorInvert()
                Text(artist)
                    .font(.caption)
                    .colorInvert()
                Spacer()
                HStack{
                    Image(systemName: "shuffle")
                        .resizable()
                        .frame(width:35, height:35)
                        .padding(15)
                    Image(systemName: "backward.end.fill")
                        .resizable()
                        .frame(width:35, height:35)
                        .padding(15)
                    Image(systemName: "play.fill")
                        .resizable()
                        .frame(width:50, height:50)
                        .padding(15)
                    Image(systemName: "forward.end.fill")
                        .resizable()
                        .frame(width:35, height:35)
                        .padding(15)
                    Image(systemName: "repeat")
                        .resizable()
                        .frame(width:35, height:35)
                        .padding(15)
                }
                .colorInvert()
                .padding([.bottom], 150)
            }
        }
    }
}

#Preview {
    PlayView()
}
