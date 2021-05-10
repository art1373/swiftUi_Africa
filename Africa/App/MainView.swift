//
//  MainView.swift
//  Africa
//
//  Created by Alireza TK on 5/9/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            ContentView().tabItem {
                Image(systemName: "square.grid.2x2")
                Text("Browse")
            }//:Content
            
            VideoListView().tabItem {
                Image(systemName: "play.rectangle")
                Text("Watch")
            }//:Video
            
            MapView().tabItem {
                Image(systemName: "map")
                Text("Locations")
            }//:Map
            
            GalleryView().tabItem {
                Image(systemName: "photo")
                Text("Gallery")
            }//:Gallery
        }
    }//:TAB
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
