//
//  DefaultView.swift
//  Desafio7
//
//  Created by Turma01-7 on 27/10/25.
//

import SwiftUI

struct DefaultView: View {
    var songsArray = [
        Song(id: 1, name: "Two Faced", artist: "Linkin Park", capa: "https://i.scdn.co/image/ab67616d0000b273c1783b85101ebf6d41a2dcbf"),
        Song(id: 2, name: "Play My Favourite Song", artist: "Tigercub", capa: "https://is1-ssl.mzstatic.com/image/thumb/Music126/v4/b3/3c/fa/b33cfac7-0f77-4e82-e0ec-de4af6c22506/197187094264.jpg/1200x630bb.jpg"),
        Song(id: 3, name: "Just Pretend", artist: "Bad Omens", capa: "https://www.shazam.com/mkimage/image/thumb/Music221/v4/f0/ce/0d/f0ce0d9c-934d-770d-e62f-74564fc410e1/00810016765424_Cover.jpg/1275x1275bb-60.webp"),
        Song(id: 4, name: "Death or Glory", artist: "Palaye Royale", capa: "https://m.media-amazon.com/images/I/91C5jcwucyL.jpg"),
        Song(id: 5, name: "Hey ya!", artist: "Outkast", capa: "https://cdn-images.dzcdn.net/images/cover/cc7abf80b3511a2fd357b43b5e28a1f6/1900x1900-000000-80-0-0.jpg"),
        Song(id: 6, name: "Smells Like Teen Spirit", artist: "Nirvana", capa: "https://www.indieground.net/images/blog/2024/indieblog-best-album-covers-90s-11.jpg"),
        Song(id: 7, name: "Bids of a feather", artist: "Billie Eilish", capa: "https://i.scdn.co/image/ab67616d0000b27371d62ea7ea8a5be92d3c1f62"),
        Song(id: 8, name: "GNX", artist: "Kendrick Lamar", capa: "https://upload.wikimedia.org/wikipedia/pt/9/93/Kendrick_Lamar_-_GNX.png"),
        Song(id: 9, name: "Papercut", artist: "Linkin Park", capa: "https://upload.wikimedia.org/wikipedia/en/2/2a/Linkin_Park_Hybrid_Theory_Album_Cover.jpg"),
        Song(id: 10, name: "Like This", artist: "Matuê", capa: "https://i.scdn.co/image/ab67616d0000b27363ecdc2fc549275b51fbb9a7"),
        Song(id: 11, name: "Teste11", artist: "Unknown", capa: "a"),
        Song(id: 12, name: "Teste12", artist: "Unknown", capa: "a")
    ]
    var body: some View {
        NavigationStack{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [Color.blue, Color.black]), startPoint: .top, endPoint: .center)
                    .ignoresSafeArea()
                ScrollView{
                    VStack{
                        AsyncImage(url: URL(string: "https://www.indieground.net/images/blog/2024/indieblog-best-album-covers-2010s-07.jpg")) {imagem in
                            imagem.resizable()
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width:235, height:235)
                        .padding([.bottom], -10)
                        .padding([.top], 15)
                        VStack(alignment: .leading){
                            Text("Favorites ")
                                .font(.title)
                                .padding(0)
                                .colorInvert()
                            HStack{
                                AsyncImage(url: URL(string: "https://avatars.githubusercontent.com/u/162829471?v=4&size=64")) {imagem in
                                    imagem.image?.resizable()
                                } 
                                .frame(width:25, height:25)
                                .cornerRadius(5)
                                .padding(0)
                                Text("Gabriel Esmeraldo")
                                    .font(.title3)
                                    .colorInvert()
                                Spacer()
                            }
                        }
                        .padding(15)
                        VStack(alignment: .leading){
                            ForEach(songsArray){ s in
                                NavigationLink(destination: PlayView(name: s.name, artist: s.artist, capa: s.capa)){
                                    HStack(){
                                        AsyncImage(url: URL(string: s.capa)){image in
                                            image.resizable()
                                        }placeholder: {
                                            ProgressView()
                                        }
                                        .frame(width:50, height:50)
                                        VStack(alignment: .leading){
                                            Text(s.name)
                                                .font(.title2)
                                            Text(s.artist)
                                                .font(.caption2)
                                        }
                                        Spacer()
                                        Image(systemName: "ellipsis")
                                    }
                                }
                                .accentColor(.white)
                                .padding([.horizontal])
                            }
                        }
                        VStack(alignment: .leading){
                            Text("Sugeridos")
                                .font(.title)
                                .padding([.horizontal], 15)
                                .colorInvert()
                            ScrollView(.horizontal){
                                HStack{
                                    VStack{
                                        AsyncImage(url: URL(string: "https://cdn.pixabay.com/photo/2015/04/04/19/13/one-706897_960_720.jpg")){image in
                                            image.resizable()
                                        }placeholder: {
                                            ProgressView()
                                        }
                                        .frame(width: 200, height:200)
                                        Text("ONE")
                                            .colorInvert()
                                    }
                                    VStack{
                                        AsyncImage(url: URL(string: "https://cdn.pixabay.com/photo/2015/04/04/19/13/two-706896_1280.jpg")){image in
                                            image.resizable()
                                        }placeholder: {
                                            ProgressView()
                                        }
                                        .frame(width: 200, height:200)
                                        Text("TWO")
                                            .colorInvert()
                                    }
                                    VStack{
                                        AsyncImage(url: URL(string: "https://cdn.pixabay.com/photo/2015/04/04/19/13/three-706895_960_720.jpg")){image in
                                            image.resizable()
                                        }placeholder: {
                                            ProgressView()
                                        }
                                        .frame(width: 200, height:200)
                                        Text("THREE")
                                            .colorInvert()
                                    }
                                    VStack{
                                        AsyncImage(url: URL(string: "https://media.istockphoto.com/id/154932750/photo/number-4.jpg?s=612x612&w=0&k=20&c=FymRZ2pfDhs7QWK8nRQqThI_TeFRX5v-ARrICXFzaXQ=")){image in
                                            image.resizable()
                                        }placeholder: {
                                            ProgressView()
                                        }
                                        .frame(width: 200, height:200)
                                        Text("FOUR")
                                            .colorInvert()
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        .tint(.white)
    }
}

#Preview {
    DefaultView()
}
