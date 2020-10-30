//
//  ContentView.swift
//  Memorize
//
//  Created by George Vilnei Arboite Gomes on 30/10/20.
//  Copyright © 2020 George Gomes. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var cardsModel = [
        CardModel(isFaceUp: true),
        CardModel(isFaceUp: true),
        CardModel(isFaceUp: false),
        CardModel(isFaceUp: true),
        CardModel(isFaceUp: false)
        ]
    
    var body: some View {
        
        HStack {
            ForEach(cardsModel, id: \.self) { elemen in
                CardView(isFaceUp: elemen.isFaceUp)
            }
        }
        .padding()
        .foregroundColor(.blue)
        .font(.largeTitle)
    }
}


struct CardView: View {
    var isFaceUp: Bool
    
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0)
                    .fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0)
                    .stroke(lineWidth: 3)
                Text("🥰")
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CardModel: Hashable {
    var isFaceUp: Bool
}
