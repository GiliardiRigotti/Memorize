//
//  ContentView.swift
//  Memoria
//
//  Created by SETEC on 17/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            CardView()
            CardView()
            CardView()
            CardView()
        }
            .padding(.horizontal)
            .foregroundColor(.red)
       
    }
}

struct CardView: View{
    @State var isFaceUp: Bool = false
    var body: some View {
        ZStack{
            let shape: RoundedRectangle = RoundedRectangle(cornerRadius: 20)
            if isFaceUp{
                shape.fill().foregroundColor(.white)
                shape.stroke(lineWidth: 3)
                Text("👌").font(.largeTitle)
            }else{
                shape.fill()
            }
        }
        .onTapGesture{
            isFaceUp = !isFaceUp
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
