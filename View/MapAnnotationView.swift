//
//  MapAnnotationView.swift
//  Africa
//
//  Created by Alireza TK on 5/11/21.
//

import SwiftUI

struct MapAnnotationView: View {
    //MARK: - PROPERTIES
    @State private var animation: Double = 0.0
    var location:NationalParkLocation
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.accentColor, lineWidth: 2)
                .frame(width: 52, height: 52, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            Circle()
                .stroke(Color.accentColor, lineWidth: 2)
                .frame(width: 54, height: 54, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .scaleEffect(1 +  CGFloat(animation))
                .opacity(1 - animation)
            
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
        }//:ZStack
        .onAppear {
            withAnimation(Animation.easeOut(duration: 1.5)
            .repeatForever(autoreverses: false)){
                animation = 1
            }
        }
    }
}

struct MapAnnotationView_Previews: PreviewProvider {
    static var locations :[NationalParkLocation] = Bundle.main.decode("locations.json")
    
    static var previews: some View {
        MapAnnotationView(location:locations[0]).previewLayout(.sizeThatFits).padding()
    }
}
