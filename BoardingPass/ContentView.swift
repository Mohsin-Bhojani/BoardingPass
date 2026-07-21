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
		ScrollView {
			VStack {
				Spacer()
				HStack {
					VStack (alignment: .leading){
						Text("Flight Name").font(.headline)
					}
					Spacer()
					VStack (alignment: .trailing){
						Text("Flight Number").font(.headline)
					}
				}
				HStack {
					Spacer()
					VStack (alignment: .trailing){
						
						Text("Flight Date").font(.callout)
					}
				}
				Spacer()
				HStack {
					VStack (alignment: .leading){
						Text("Sharjah Airport").font(.title2)
					}
					Spacer()
					VStack (alignment: .trailing){
						Text("Dubai Airport ").font(.title2)
					}
				}
				Spacer()
				HStack {
					VStack (alignment: .leading){
						Text("SHJ").font(.largeTitle)
					}
					Spacer()
					Image(systemName: "airplane")  .font(.title)
					Spacer()
					VStack (alignment: .trailing){
						Text("DXB").font(.largeTitle)
					}
				}
				Spacer()
				HStack {
					VStack (alignment: .leading){
						Text("10:00").font(.title3)
					}
					Spacer()
					VStack (alignment: .trailing){
						Text("14:00").font(.title3)
					}
				}
				Spacer()
				HStack {
					VStack (alignment: .leading){
						Text("Name Of The Passger ").font(.title3)
					}
					Spacer()
				}
				Spacer()
				HStack {
					VStack {
						Text("Gate").font(.callout)
						Text("15F").font(.subheadline)
					}
					Spacer()
					VStack {
						Text("Boards").font(.callout)
						Text("08:45").font(.subheadline)
					}
					Spacer()
					VStack {
						Text("Group").font(.callout)
						Text("A6").font(.subheadline)
					}
					Spacer()
					VStack {
						Text("Seat").font(.callout)
						Text("7F").font(.subheadline)
					}
				}
				Spacer()
				VStack {
					Spacer()
					Image(systemName: "photo.fill") //For QR code
					Spacer()
				}
			}
		}.padding()
	}
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
