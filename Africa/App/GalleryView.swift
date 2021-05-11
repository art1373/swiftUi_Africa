//
//  GalleryView.swift
//  Africa
//
//  Created by Alireza TK on 5/9/21.
//

import SwiftUI

struct GalleryView: View {
    //MARK: - PROPERTIES
    @State private var selectedAnimal: String = "lion"
    let animals:[Animal] = Bundle.main.decode("animals.json")
    let haptics = UIImpactFeedbackGenerator(style: .medium)
    //    let gridLayout:[GridItem] = Array(repeating: GridItem(.flexible()), count: 3)
    @State private var gridLayout:[GridItem] = [GridItem(.flexible())]
    @State private var gridColumn:Double = 3.0
    
    func gridSwitch() {
        gridLayout = Array(repeating: .init(.flexible()), count: Int(gridColumn))
    }
    
    
    //MARK: - BODY
    var body: some View {
        ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false) {
            Image(selectedAnimal)
                .resizable()
                .scaledToFit()                     .clipShape(Circle()).overlay(Circle().stroke(Color.accentColor, lineWidth: 8))
            
            Slider(value: $gridColumn, in: 2...4, step: 1)
                .padding(.horizontal)
                .onChange(of: gridColumn, perform: { value in
                    gridSwitch()
                })
            
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 30) {
                //MARK: - GRID
                LazyVGrid(columns: gridLayout, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10) {
                    ForEach(animals) {
                        item in
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle()).overlay(Circle().stroke(Color.white, lineWidth: 1)).onTapGesture(perform: {
                                selectedAnimal = item.image
                                haptics.impactOccurred()
                            })
                        
                    }//:LOOP
                }//:GRID
                .animation(.easeIn)
                .onAppear(perform: {
                    gridSwitch()
                })
            }//:VStack
            .padding(.horizontal, 10)
            .padding(.vertical, 50)
        }//:SCROLL
        .frame(maxWidth:.infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
