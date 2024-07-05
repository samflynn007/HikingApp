//
//  ContentView.swift
//  HikingApp
//
//  Created by Venky on 04/07/24.
//

import SwiftUI

struct ContentView: View {
    let hikes = [
        Hike(name: "salmonberry", photo: "sal", miles: 6),
        Hike(name: "Tom, Dick, and Harry Mountain", photo: "tom", miles: 5.8),
        Hike(name: "Tamanawas", photo: "tam", miles: 5)
    ]
    var body: some View {
        NavigationStack {
            List(hikes) { hike in
                NavigationLink(value: hike) {
                    HikeCellView(hike: hike)
                }
            }.navigationTitle("Hikes")
                .navigationDestination(for: Hike.self) { hike in
                    HikeDetailScreen(hike: hike)
                }
        }
    }
}

#Preview {
    ContentView()
}

struct HikeCellView: View {
    let hike: Hike
    var body: some View {
        HStack(alignment: .top) {
            Image(hike.photo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                .frame(width: 100)
            VStack(alignment: .leading) {
                Text(hike.name)
                Text("\(hike.miles.formatted()) miles")
            }
        }
    }
}
