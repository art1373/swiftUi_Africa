//
//  HeadingView.swift
//  Africa
//
//  Created by Alireza TK on 5/10/21.
//

import SwiftUI

struct HeadingView: View {
    //MARK: - PROPERTIES
    var headingImage: String
    var headingText: String
    //MARK: - BODY
    var body: some View {
        HStack {
            Image(systemName: headingImage).foregroundColor(.accentColor).imageScale(.large)
            
            Text(headingText).font(.title3).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            
        }//:HSTACK
        .padding(.vertical)
    }
}

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(headingImage: "photo.rectangle.on.angled", headingText: "Wilderness in pictures").previewLayout(.sizeThatFits).padding()
    }
}
