//
//  DefaultView.swift
//  Desafio8
//
//  Created by Turma01-7 on 28/10/25.
//

import SwiftUI
import MapKit

struct DefaultView: View {
    @State private var sheetVisible: Bool = false
    @State private var position: MapCameraPosition = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: -22.9519, longitude: -43.2115),
            span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10))
    )
    let locais : [Location] = [
        Location(nome: "Cristo Redentor", foto: "https://upload.wikimedia.org/wikipedia/commons/2/28/Santa_Teresa%2C_Rio_de_Janeiro_-_State_of_Rio_de_Janeiro%2C_Brazil_-_panoramio_%2810%29.jpg", descricao: "Cristo Redentor é uma estátua que retrata Jesus Cristo, localizada no topo do morro do Corcovado, a 709 metros acima do nível do mar, dentro do Parque Nacional da Tijuca. Tem vista para parte considerável da cidade brasileira do Rio de Janeiro, sendo a frente da estátua voltada para a Baía de Guanabara e as costas para a Floresta da Tijuca. Feito de concreto armado e pedra-sabão, tem trinta metros de altura (uma das maiores estátuas do mundo), sem contar os oito metros do pedestal, sendo a mais alta estátua do mundo no estilo Art Déco. Seus braços se esticam por 28 metros de largura e a estrutura pesa 1 145 toneladas.", latitude: -22.9519, longitude: -43.2115),
        Location(nome: "Machu Picchu", foto: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/1_pano_machu_picchu_guard_house_river_2014.jpg/1400px-1_pano_machu_picchu_guard_house_river_2014.jpg", descricao: "Huayna Picchu Picchu ou Machu Picchu (em quíchua Machu Picchu, velha montanha), também chamada cidade perdida dos Incas, é uma cidadela Inca, da Era pré-colombiana, bem conservada, localizada no topo de uma montanha, a 2 400 metros de altitude, no vale do rio Urubamba, atual Peru. Foi construída no início do século XV, por volta de 1420, sob as ordens de Pachacuti. O local é, provavelmente, o símbolo mais típico do Império Inca, quer devido à sua original localização e características geológicas, quer devido à sua descoberta tardia em 1911.", latitude: -13.1631, longitude: -72.5452),
        Location(nome: "Muralha da china", foto: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/The_Great_Wall_of_China_at_Jinshanling.jpg/960px-The_Great_Wall_of_China_at_Jinshanling.jpg", descricao: "A Grande Muralha da China (萬里長城, 万里长城, Wànlǐ Chángchéng, literalmente muro de dez mil li de comprimento) é uma série de fortificações na China. Elas foram construídas ao longo das fronteiras históricas do norte dos antigos estados chineses e da China Imperial como proteção contra vários grupos nômades da Estepe Euroasiática. As primeiras muralhas datam do século VII a.C.; estas foram unidas na dinastia Qin. Dinastias sucessivas expandiram o sistema de muralhas; as seções mais conhecidas foram construídas pela dinastia Ming (1368–1644).", latitude: 40.4319, longitude: 116.5678),
        Location(nome: "Petra Jordania", foto: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Petra_Jordan_BW_43.JPG/500px-Petra_Jordan_BW_43.JPG", descricao: "Petra (πέτρα, petra; البتراء, Al-Bitrā/Al-Batrā), originalmente conhecida pelos nabateus como Raqmu, é uma cidade histórica e arqueológica localizada no sul da Jordânia. A cidade é famosa por sua arquitetura esculpida em rocha e por seu sistema de canalização de água. Outro nome para Petra é Cidade Rosa, devido à cor das pedras do local. Estabelecido possivelmente já em 312 a.C. como a capital dos árabes nabateus, é um símbolo jordaniano, assim como a atração turística a mais visitada do país.", latitude: 30.3206, longitude: 35.4441),
        Location(nome: "Coliseu", foto: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Colosseo_2020.jpg/500px-Colosseo_2020.jpg", descricao: "Coliseu (Colosseo), também conhecido como Anfiteatro Flaviano (Amphitheatrum Flavium; Anfiteatro Flavio), é um anfiteatro oval localizado no centro da cidade de Roma, capital da Itália. Construído com tijolos revestidos de argamassa e areia, e originalmente cobertos com travertino é o maior anfiteatro já construído e está situado a leste do Fórum Romano. A construção começou sob o governo do imperador Vespasiano em 72 d.C. e foi concluída em 80 d.C., sob o regime do seu sucessor e herdeiro, Tito. Outras modificações foram feitas durante o reinado de Domiciano (81-96).", latitude: 41.8902, longitude: 12.4869),
        Location(nome: "Taj Mahal", foto: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1f/Taj_Mahal_N-UP-A28-a.jpg/960px-Taj_Mahal_N-UP-A28-a.jpg", descricao: "O Taj Mahal (ताज महल) é um mausoléu situado em Agra, na Índia, sendo o mais conhecido dos monumentos do país. Encontra-se classificado pela UNESCO como Patrimônio da Humanidade. Foi anunciado em 2007 como uma das sete maravilhas do mundo moderno. A obra foi feita entre 1632 e 1653 com a força de cerca de 20 mil homens, trazidos de várias cidades do Oriente, para trabalhar no suntuoso monumento de mármore branco que o imperador Shah Jahan mandou construir em memória de sua esposa favorita, Aryumand Banu Begam, a quem chamava de Mumtaz Mahal (A joia do palácio)." , latitude: 27.1751, longitude: 78.0395),
        Location(nome: "Chichén-Itzá", foto: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Chichen_Itza-18_%28cropped%29.jpg/960px-Chichen_Itza-18_%28cropped%29.jpg", descricao: "Chichén Itzá era um polo urbano importante dos maias na planície norte no início (600-900) e no final (cerca 800-900) do período clássico e também no início do período pós-clássico (cerca de 900-1200). O local exibe vários estilos arquitetônicos, reminiscentes dos estilos vistos no México central. Acreditava-se que a presença de estilos desta região era sinal da migração direta ou mesmo da conquista do México central, mas a maioria de interpretações contemporâneas veem a presença destes estilos não maias mais como o resultado da difusão cultural.", latitude: 20.6787, longitude: -88.5710)
    ]
    @State private var localidadeSelecionada: Location? = nil
    var body: some View {
        ZStack{
            Map(position: $position) {
                ForEach(locais, id: \.self) { local in
                    Annotation(local.nome, coordinate: CLLocationCoordinate2D(latitude: local.latitude, longitude: local.longitude)){
                        Image(systemName: "mappin.circle")
                            .resizable()
                            .frame(width:32, height:32)
                            .background(.yellow)
                            .clipShape(Circle())
                            .onTapGesture {
                                sheetVisible.toggle()
                            }
                            .sheet(isPresented: $sheetVisible) {
                                SheetView(nome: local.nome, foto: local.foto, descricao: local.descricao)
                            }
                    }
                }
            }
                .ignoresSafeArea()
            VStack{
                Picker("Maravilhas do mundo moderno", selection: $localidadeSelecionada){
                    ForEach(locais, id: \.self){ local in
                        Text(local.nome).tag(local as Location?)
                    }
                }
                .frame(width:250, height:70)
                .background(.yellow)
                .tint(.black)
                .cornerRadius(25)
                .onChange(of: localidadeSelecionada, {
                    var lat = localidadeSelecionada?.latitude
                    var long = localidadeSelecionada?.longitude
                    position = MapCameraPosition.region(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: lat!, longitude: long!), span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10)))}
                )
                Spacer()
                Text("Maravilhas do Mundo Moderno")
                    .frame(width:270, height:60)
                    .fontWeight(.semibold)
                    .background(.yellow)
                    .cornerRadius(25)
            }
        }
    }
}

#Preview {
    DefaultView()
}

