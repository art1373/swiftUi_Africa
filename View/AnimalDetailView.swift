//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Alireza TK on 5/10/21.
//

import SwiftUI

struct AnimalDetailView: View {
    //MARK: - PROPERTIES
    let animal: Animal
    
    //MARK: - BODY
    var body: some View {
        ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false){
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20) {
                
                //Hero Image
                
                Image(animal.image).resizable().scaledToFit()
                
                //TITLE
                
                Text(animal.name.uppercased()).font(.largeTitle).fontWeight(.heavy).multilineTextAlignment(.center).padding(.vertical,8).foregroundColor(.primary).background(Color.accentColor.frame( height: 8).offset(y:24))
                
                //HEADLINE
                
                Text(animal.headline).font(.headline).multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/).foregroundColor(.accentColor).padding(.horizontal)
                
                //GALLERY
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                    InsetGalleryView(animal: animal)
                }.padding(.horizontal)
            }//:VSTACK
            .navigationBarTitle("Learn more about \(animal.name)",displayMode: .inline)
        }//:SCROLL
    }
}

//MARK: - PREVIEW
struct AnimalDetailView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        NavigationView{
            AnimalDetailView(animal: animals[0])
        }.previewDevice("iPhone 12")
    }
}
