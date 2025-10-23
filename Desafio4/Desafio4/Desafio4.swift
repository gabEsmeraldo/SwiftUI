//
//  Desafio4.swift
//  Desafio4
//
//  Created by Turma01-7 on 23/10/25.
//

import SwiftUI

struct Desafio4: View {
    @State private var backgroundColor: Color = Color(.gray)
    @State private var distance: Double = 0
    @State private var time: Double = 0
    @State private var result: Double = 0
    @State private var imageName: String = "interrogacao"
    var body: some View {
        ZStack{
            Color(backgroundColor)
                .ignoresSafeArea()
            VStack{
                VStack{
                    Text("Digite a distância (km):")
                        .padding(-5)
                        .ignoresSafeArea()
                    TextField("0", value: $distance, format: .number)
                        .background(.white)
                        .cornerRadius(50)
                        .frame(maxWidth: 180, maxHeight: 50)
                        .multilineTextAlignment(.center)
                        .padding(-10)
                        .keyboardType(.decimalPad)
                        .textContentType(.oneTimeCode)
                    Text("Digite o tempo (h):")
                        .padding(-5)
                    TextField("0", value: $time, format: .number)
                        .background(.white)
                        .cornerRadius(50)
                        .frame(maxWidth: 180, maxHeight: 50)
                        .multilineTextAlignment(.center)
                        .padding(-10)
                        .keyboardType(.decimalPad)
                        .textContentType(.oneTimeCode)
                    Button("Calcular"){
                        result = distance/time
                        switch result {
                        case 0.0...9.9:
                            backgroundColor = .verde
                            imageName = "tartaruga"
                        case 10...29.9:
                            backgroundColor = .azul
                            imageName = "elefante"
                        case 30...69.9:
                            backgroundColor = .laranja
                            imageName = "avestruz"
                        case 70...89.9:
                            backgroundColor = .amarelo
                            imageName = "leao"
                        case 90...130:
                            backgroundColor = .vermelho
                            imageName = "guepardo"
                        default:
                            backgroundColor = .gray
                            imageName = "interrogacao"
                        }
                    }
                    .frame(width: 100, height:40)
                    .foregroundColor(.orange)
                    .background(.black)
                    .cornerRadius(10)
                    .padding(-5)
                    Spacer()
                    Text(String(format: "%.2f km/h", result))
                        .font(.title)
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipShape(Circle())
                        .padding(20)
                    Spacer()
                    VStack{
                        HStack{
                            Spacer()
                            Text("TARTARUGA")
                                .foregroundStyle(.white)
                            Spacer()
                            Text("(0 - 9,9km/h)")
                                .foregroundStyle(.white)
                            Circle()
                                .foregroundColor(.verde)
                                .frame(width:20)
                        }
                        HStack{
                            Spacer()
                            Text("ELEFANTE")
                                .foregroundStyle(.white)
                            Spacer()
                            Text("(10 - 29.9km/h)")
                                .foregroundStyle(.white)
                            Circle()
                                .foregroundColor(.azul)
                                .frame(width:20)
                        }
                        HStack{
                            Spacer()
                            Text("AVESTRUZ")
                                .foregroundStyle(.white)
                            Spacer()
                            Text("(30 - 69.9km/h)")
                                .foregroundStyle(.white)
                            Circle()
                                .foregroundColor(.laranja)
                                .frame(width:20)
                        }
                        HStack{
                            Spacer()
                            Text("LEÃO")
                                .foregroundStyle(.white)
                                .multilineTextAlignment(.center)
                            Spacer()
                            Text("(70 - 89.9km/h)")
                                .foregroundStyle(.white)
                            Circle()
                                .foregroundColor(.amarelo)
                                .frame(width:20)
                        }
                        HStack{
                            Spacer()
                            Text("GUEPARDO")
                                .foregroundStyle(.white)
                                .multilineTextAlignment(.center)
                            Spacer()
                            Text("(90 - 130km/h)")
                                .foregroundStyle(.white)
                            Circle()
                                .foregroundColor(.vermelho)
                                .frame(width:20)
                        }
                    }
                    .frame(width: 250, height: 150)
                    .multilineTextAlignment(.trailing)
                    .padding(8)
                    .background(.black)
                    .cornerRadius(10)
                }
                .padding(10)
            }
        }
    }
}

#Preview {
    Desafio4()
}
