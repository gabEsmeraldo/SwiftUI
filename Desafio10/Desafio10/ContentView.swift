//
//  ContentView.swift
//  Desafio10
//
//  Created by Turma01-7 on 03/11/25.
//

import SwiftUI
import AVFoundation
import Translation

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    let tts = AVSpeechSynthesizer()
    
    @State var showTranslation = false
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            ScrollView {
                Text("Aeroportos")
                    .font(.title)
                    .foregroundStyle(Color.white)
                    .padding()
                    .background(.indigo)
                    .padding([.top], -6)
                    .cornerRadius(5)
                ForEach(viewModel.aeroportos){ aeroporto in
                    VStack(alignment: .leading) {
                        HStack {
                            Image(systemName: "airplane.departure")
                                .resizable()
                                .frame(width: 85, height: 75)
                            Spacer()
                            VStack {
                                Text(aeroporto.nome)
                                    .foregroundStyle(Color.white)
                                    .font(.title2)
                                Text(aeroporto.endereco)
                                    .foregroundStyle(Color.white)
                                    .font(.caption)
                            }
                            Spacer()
                        }
                        .padding(15)
                        .background(.indigo)
                        .cornerRadius(5)
                        Text("Portões: ")
                            .font(.title)
                            .foregroundStyle(Color.white)
                            .padding([.bottom], -5)
                        VStack(alignment: .leading){
                            ForEach(aeroporto.portoes, id:\.self){portao in
                                HStack {
                                    Text(portao)
                                        .font(.title3)
                                    Spacer()
                                    Image(systemName: "mic.circle.fill")
                                        .onTapGesture {
                                            tts.speak(AVSpeechUtterance(string: portao))
                                        }
                                    Image(systemName: "message.and.waveform.fill")
                                        .onTapGesture {
                                            showTranslation.toggle()
                                        }
                                    .translationPresentation(isPresented: $showTranslation, text: portao)
                                }
                            }
                        }
                        .padding(15)
                        .background(.blue)
                        .cornerRadius(5)
                    }
                    .padding([.bottom], 40)
                    
                }
            }
            .padding()
        }
        .onAppear(perform: {
            viewModel.fetch()
        })
    }
}

#Preview {
    ContentView()
}
