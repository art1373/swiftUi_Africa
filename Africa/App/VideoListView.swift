//
//  VideoListView.swift
//  Africa
//
//  Created by Alireza TK on 5/9/21.
//

import SwiftUI

struct VideoListView: View {
    //MARK: - PROPERTIES
    @State var videos :[Video] = Bundle.main.decode("videos.json")
    let haptic = UIImpactFeedbackGenerator(style: .medium)
    
    //MARK: - BODY
    
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { item in
                    NavigationLink(
                        destination: VideoPlayerView(videoSelected: item.id, videoTitle: item.name)) {
                        VideoListItemView(video: item)
                            .padding(.vertical, 2)
                    }
                    Divider()
                        .background(Color.accentColor)
                }//:LOOP
            }//:List
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Videos",displayMode: .inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action:{
                        videos.shuffle()
                        haptic.impactOccurred()
                    }){
                        Image(systemName: "arrow.2.squarepath")
                    }
                }
            }
        }//:Navigation
    }
}

//MARK: - PREVIEW
struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
