//
//  EpisodeInfo.swift
//  tvshow
//
//  Created by Kyra Hung on 4/21/23.
//

import SwiftUI

struct EpisodeInfo: View {
    let episode: Episode
    
    var body: some View {
        AsyncImage(url: URL(string: "https://image.tmdb.org/t/p/w500\(episode.still_path ?? "")"))
        Text(episode.overview)
            .padding(10)
        Text("Air Date: \(episode.air_date ?? "")")
            .padding(10)
        .navigationTitle(episode.name)
        }
    }
    
    
    struct EpisodeInfo_Previews: PreviewProvider {
        static var previews: some View {
            EpisodeInfo(episode: Episode(air_date: "2018-09-09", episode_number: 1, id: 12345, name: "Pilot", overview: "testing testing testing overview text overview text", still_path: "/sFILcK0exJVJV4BZMAOPzpBEuUT.jpg"))
        }
    }

