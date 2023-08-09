//
//  diceView.swift
//  roll-the-dice
//
//  Created by Funnmedia 2 on 25/07/23.
//

import SwiftUI

struct diceView: View {
    let n: Int
        var body: some View {
            Image("dice\(n)")
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .padding(.all)
            
    }
}

struct diceView_Previews: PreviewProvider {
    static var previews: some View {
        diceView(n: 1).previewLayout(.sizeThatFits)
    }
}
