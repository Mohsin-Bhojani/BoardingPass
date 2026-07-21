//
//  ContentView.swift
//  BoardingPass
//
//  Created by Mohsin on 21/07/2026.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    var body: some View {
		VStack {
			VStack (
				alignment: .leading
			) {
				EmptyView()
			}
		}
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
