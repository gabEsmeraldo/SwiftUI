//
//  ListView.swift
//  Desafio5
//
//  Created by Turma01-7 on 24/10/25.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        VStack{
            List{
                Section(header: Text("List").font(.title).bold()){
                    HStack{
                        Text("Item")
                        Spacer()
                        Image(systemName: "paintbrush")
                    }
                    HStack{
                        Text("Item")
                        Spacer()
                        Image(systemName: "paintbrush.pointed")
                    }
                    HStack{
                        Text("Item")
                        Spacer()
                        Image(systemName: "paintpalette")
                    }
                }
            }
        }
    }
}

#Preview {
    ListView()
}
