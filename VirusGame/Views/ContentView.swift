//
//  teste1p2.swift
//  VirusGame
//
//  Created by Vince on 20/02/2023.
//

import Foundation
import SwiftUI

struct ContentView: View {
    
    
    @State var numberOfLine: Int = 2
    @State var numberOfColumn:Int = 2
    
    var body: some View {
        VStack {
            ForEach(0..<numberOfLine, id: \.self) { i in
                HStack{
                    ForEach(0..<numberOfColumn, id: \.self) { j in
                        ObjetX()
                            .foregroundColor(getColor(lineNum: i, columnNum: j))
                    }
                    
                }
            }
            Spacer()
            Button {
                numberOfColumn = numberOfColumn + 1
            } label: {
                Text("ajouter une colonne")
            }
            .padding()
            Button {
                numberOfLine += 1
            } label: {
                Text("ajouter une ligne")
            }
            .padding()
        }
        
    }
    
    
    func getColor(lineNum:Int,columnNum:Int) -> Color {
        print("la fonction de couleur à été appelé avec le numéro de ligne\(lineNum) et le numéro de colonne \(columnNum)")
        if lineNum == 0,columnNum == 0 {
            return .red
        } else if lineNum == numberOfLine - 1, columnNum == numberOfColumn - 1 {
            return .blue
        } else {
            return .black
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
