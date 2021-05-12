//
//  CreditsView.swift
//  Africa
//
//  Created by Alireza TK on 5/12/21.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            Text("""
Made with Love ♡ by AlirezaTK
All Rights reserved to Art1373
""")
                .font(.footnote)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(.accentColor)
                .multilineTextAlignment(.center)
        }//:VStack
        .padding()
        .opacity(0.6)
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView().previewLayout(.sizeThatFits).padding()
    }
}
