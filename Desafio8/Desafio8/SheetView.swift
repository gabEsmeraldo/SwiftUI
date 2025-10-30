//
//  SheetView.swift
//  Desafio8
//
//  Created by Turma01-7 on 30/10/25.
//

import SwiftUI

struct SheetView: View {
    var nome: String
    var foto: String
    var descricao: String
    
    var body: some View {
        ZStack {
            Color.marinho
                .ignoresSafeArea()
            VStack {
                AsyncImage(url: URL(string: foto)){image in
                    image.image?.resizable()
                }
                .aspectRatio(contentMode: .fit)
                .padding(20)
                .border(Color.black)
                .background(.amarelo)
                .padding(10)
                Text(nome)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.marinhoclaro)
                Text(descricao)
                    .foregroundStyle(.white)
                    .padding(20)
                    .background(.marinhoclaro)
                    .padding([.horizontal], 10)
                    .padding([.top], 5)
            }
        }
    }
}

#Preview {
    SheetView(nome: "Cristo Redentor", foto: "https://upload.wikimedia.org/wikipedia/commons/2/28/Santa_Teresa%2C_Rio_de_Janeiro_-_State_of_Rio_de_Janeiro%2C_Brazil_-_panoramio_%2810%29.jpg", descricao: "Cristo Redentor é uma estátua que retrata Jesus Cristo, localizada no topo do morro do Corcovado, a 709 metros acima do nível do mar, dentro do Parque Nacional da Tijuca. Tem vista para parte considerável da cidade brasileira do Rio de Janeiro, sendo a frente da estátua voltada para a Baía de Guanabara e as costas para a Floresta da Tijuca. Feito de concreto armado e pedra-sabão, tem trinta metros de altura (uma das maiores estátuas do mundo), sem contar os oito metros do pedestal, sendo a mais alta estátua do mundo no estilo Art Déco. Seus braços se esticam por 28 metros de largura e a estrutura pesa 1 145 toneladas.")
}
