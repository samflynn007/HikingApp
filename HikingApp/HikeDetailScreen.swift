//
//  HikeDetailScreen.swift
//  HikingApp
//
//  Created by Venky on 04/07/24.
//

import SwiftUI

struct HikeDetailScreen: View {
    let hike: Hike
    @State private var zoomed: Bool = false
    var body: some View {
        VStack {
            Image(hike.photo)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill: .fit)
                .onTapGesture {
                    withAnimation {
                        zoomed.toggle()
                    }
                }
            Text(hike.name)
                .font(.title)
            Text("\(hike.miles.formatted()) miles")
            Spacer()
        }.navigationTitle(hike.name)
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        HikeDetailScreen(hike: Hike(name: "salmonberry", photo: "sal", miles: 6))
    }
}
