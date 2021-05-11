//
//  InsetDetailView.swift
//  Africa
//
//  Created by Alireza TK on 5/11/21.
//

import SwiftUI

struct InsetDetailView: View {
    //MARK: - PROPERTIES
    let animal:Animal
    
    //MARK: - BODY
    var body: some View {
        GroupBox{
            TabView{
                ForEach(animal.fact,id:\.self) { item in
                    Text(item)
                }
            }//:TAB
        }//:BOX
        .tabViewStyle(PageTabViewStyle())
        .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
    }
}

//MARK: - PREVIEW
struct InsetDetailView_Previews: PreviewProvider {
    static let animals:[Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsetDetailView(animal: animals[0]).previewLayout(.sizeThatFits).padding()
    }
}
