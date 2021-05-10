//
//  AnimalListView.swift
//  Africa
//
//  Created by Alireza TK on 5/10/21.
//

import SwiftUI

struct AnimalListView: View {
    //MARK: - PROPERTIES
    let animal: Animal
    //MARK: - BODY
    var body: some View {
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 16) {
            Image(animal.image).resizable().scaledToFill().frame(width: 90, height: 90).clipShape(RoundedRectangle(cornerRadius: 12))
            VStack(alignment: .leading, spacing: 8) {
                Text(animal.name).font(.title2).fontWeight(.heavy).foregroundColor(.accentColor)
                Text(animal.headline).font(.footnote).multilineTextAlignment(.leading).lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/).padding(.trailing, 2)
            }//:VSTACK
        }//:HSTACK
    }
}

//MARK: - PREVIEW
struct AnimalListView_Previews: PreviewProvider {
    static let animals:[Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        AnimalListView(animal: animals[1]).previewLayout(.sizeThatFits).padding()
    }
}
