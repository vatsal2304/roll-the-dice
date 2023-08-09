//
//  ContentView.swift
//  roll-the-dice
//
//  Created by Funnmedia 2 on 25/07/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    var body: some View {
        ZStack {
            Image("newbackground")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            
            VStack {
                Image("diceeLogo").padding(.vertical)
                
                Spacer()
                
                HStack {
                    diceView(n: leftDiceNumber)
                    diceView(n: rightDiceNumber)
                }
                .padding(.horizontal)
             
                Spacer()
               
                Button(action: {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                }){
                    Text("Roll")
                        .foregroundColor(Color.white)
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .padding(.horizontal)
                }
                .background(Color.red)
                .padding(.all)
                
            }
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

