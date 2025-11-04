//
//  ContentView.swift
//  Desafio11
//
//  Created by Turma01-7 on 04/11/25.
//

import SwiftUI
import GoogleGenerativeAI

struct ContentView: View {
    let model = GenerativeModel(name: "gemini-2.5-flash", apiKey: APIKey.default)
    @State var textInput = ""
    @State var aiResponse = "Selecione um idioma e um nivel para iniciar"
    let idiomas : [String] = ["Inglês", "Espanhol", "Italiano", "Francês", "Japonês"]
    @State var idiomaSelecionado = "Inglês"
    let niveis : [String] = ["Iniciante", "Medio", "Avançado", "Fluente", "Impossivel"]
    @State var nivelSelecionado = "Medio"
    @State var selectedResponse = ""
    @State var AlertIsPresented = false
    @State var tituloAlerta = "Placeholder"
    @State var textoAlerta = "Placeholder"
    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()
            VStack{
                HStack {
                    Picker("Selecione um idioma", selection: $idiomaSelecionado){
                        ForEach(idiomas, id:\.self){ idioma in
                            Text(idioma)
                                .font(.title)
                                .fontWeight(.bold)
                                .padding()
                        }
                    }
                    .frame(maxWidth:150)
                    .padding(8)
                    .background(.black)
                    .cornerRadius(8)
                    .tint(.white)
                    Picker("Selecione um idioma", selection: $nivelSelecionado){
                        ForEach(niveis, id:\.self){ nivel in
                            Text(nivel)
                                .font(.title)
                                .fontWeight(.bold)
                                .padding()
                        }
                    }
                    .frame(maxWidth:150)
                    .padding(8)
                    .background(.black)
                    .cornerRadius(8)
                    .tint(.white)
                }
                Text(aiResponse)
                    .padding(8)
                    .frame(maxWidth: 370, maxHeight:500)
                    .background(.black)
                    .cornerRadius(8)
                    .foregroundStyle(Color.white)
                Spacer()
                Button("Iniciar"){
                    textInput = "Estamos fazendo um jogo sobre perguntas e respostas de idiomas, quero que me crie uma pergunta no sobre o idioma: \(idiomaSelecionado), crie o enunciado em português para os niveis abaixo de avançado, Faça a pergunta para o nivel: \(nivelSelecionado), tente seguir o que foi pedido ao maximo, faça perguntas com respostas de multipla escolha, não envie a resposta correta junto, irei perguntar novamente a seguir, me envie somente a pergunta e alternativas, sem mais nada. Limite a pergunta + alternativas a 600 caracteres, NÃO EXCEDA ESTE LIMITE"
                    sendMessage()
                }
                .font(.title)
                .padding(18)
                .background(.black)
                .cornerRadius(8)
                .tint(.white)
                VStack{
                    HStack{
                        Button("A"){
                            selectedResponse = "A"
                            textInput = "Me envie a resposta e somente a letra da resposta em caracteres maiusculos, para a pergunta a seguir \(aiResponse)"
                            checkResponse()
                        }
                        .font(.system(size: 100))
                        .frame(width:175, height: 150)
                        .background(.red)
                        .cornerRadius(15)
                        .tint(.black)
                        Button("B"){
                            selectedResponse = "B"
                            textInput = "Me envie a resposta e somente a letra da resposta em caracteres maiusculos, para a pergunta a seguir \(aiResponse)"
                            checkResponse()
                        }
                        .font(.system(size: 100))
                        .frame(width:175, height: 150)
                        .background(.green)
                        .cornerRadius(15)
                        .tint(.black)
                    }
                    HStack{
                        Button("C"){
                            selectedResponse = "C"
                            textInput = "Me envie a resposta e somente a letra da resposta em caracteres maiusculos, para a pergunta a seguir \(aiResponse)"
                            checkResponse()
                        }
                        .font(.system(size: 100))
                        .frame(width:175, height: 150)
                        .background(.blue)
                        .cornerRadius(15)
                        .tint(.black)
                        Button("D"){
                            selectedResponse = "D"
                            textInput = "Me envie a resposta e somente a letra da resposta em caracteres maiusculos, para a pergunta a seguir \(aiResponse)"
                            checkResponse()
                        }
                        .font(.system(size: 100))
                        .frame(width:175, height: 150)
                        .background(.yellow)
                        .cornerRadius(15)
                        .tint(.black)
                    }
                }
                
            }
        }
        .alert(isPresented: $AlertIsPresented) {
            Alert(
                title: Text("\(tituloAlerta)")
                    .font(.title),
                message: Text("\(textoAlerta)")
                    .font(.subheadline),
                primaryButton: .default(Text("Continuar")){
                    sendMessage()
                },
                secondaryButton: .cancel(Text("Mudar Configuração"))
            )
        }
    }
    
    func checkResponse(){
        textInput = "Me envie a resposta e somente a letra da resposta em caracteres maiusculos, para a pergunta a seguir \(aiResponse)"
        aiResponse = "Processando Resposta..."
        
        Task {
            do{
                let response = try await model.generateContent(textInput)
                
                guard let text = response.text else {
                    textInput = "Sorry, I could not process that. \nPlease try again."
                    return
                }
                
                textInput = ""
                aiResponse = text
                
                
                if selectedResponse == aiResponse{
                    tituloAlerta = "Parabéns!"
                    textoAlerta = "Você acertou, Continue assim!"
                    AlertIsPresented = true
                    print("acerto")
                }else {
                    tituloAlerta = "Poxa!"
                    textoAlerta = "Não foi dessa vez, mas continue tentando!"
                    AlertIsPresented = true
                    print("erro")
                }
                
            } catch {
                aiResponse = "Something went wrong!\n\(error.localizedDescription)"
            }
        }
    }
    
    func sendMessage() {
        aiResponse = "Processando Pergunta..."
        textInput = "Estamos fazendo um jogo sobre perguntas e respostas de idiomas, quero que me crie uma pergunta no sobre o idioma: \(idiomaSelecionado), crie o enunciado em português para os niveis abaixo de avançado, Faça a pergunta para o nivel: \(nivelSelecionado), tente seguir o que foi pedido ao maximo, faça perguntas com respostas de multipla escolha, não envie a resposta correta junto, irei perguntar novamente a seguir, me envie somente a pergunta e alternativas, sem mais nada. Limite a pergunta + alternativas a 600 caracteres, NÃO EXCEDA ESTE LIMITE"
        
        
        Task {
            do{
                let response = try await model.generateContent(textInput)
                
                guard let text = response.text else {
                    textInput = "Sorry, I could not process that. \nPlease try again."
                    return
                }
                
                textInput = ""
                aiResponse = text
            } catch {
                aiResponse = "Something went wrong!\n\(error.localizedDescription)"
            }
        }
    }
    
}


#Preview {
    ContentView()
}
