//
//  WebLinkView.swift
//  Africa
//
//  Created by Alireza TK on 5/11/21.
//

import SwiftUI

struct WebLinkView: View {
    //MARK: - PROPERTIES
    let animal:Animal
    //MARK: - BODY
    var body: some View {
        GroupBox{
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                Group {
                    Image(systemName: "arrow.up.right.square")
                    Link(animal.name, destination: (URL(string:animal.link) ?? URL(string: "https://wikipedia.org"))!)
                }//:GROUP
                .foregroundColor(.accentColor)
            }//:HSTACK
            
        }//:BOX
    }
}

//MARK: - PREVIEW
struct WebLinkView_Previews: PreviewProvider {
    static let animals:[Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        WebLinkView(animal: animals[0]).previewLayout(.sizeThatFits).padding()
    }
}
