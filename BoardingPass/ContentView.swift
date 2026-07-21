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
			HStack {
				VStack (alignment: .leading){
					Text("Flight Name")
					
				}
				VStack (alignment: .trailing){
					Text("         ")
					
				}
				VStack (alignment: .trailing){
					Text("Flight Date")
					
				}
			}
			HStack {
				VStack (alignment: .leading){
					Text("Departure Airport Name")
				}
				VStack (alignment: .center){
					Text("         ")
				}
				VStack (alignment: .trailing){
					Text("Arrival Airport Name")
				}
			}
			HStack {
				VStack (alignment: .leading){
					Text("AUD").font(.largeTitle)
				}
				VStack (alignment: .center){
					Text("         ")
				}
				VStack (alignment: .trailing){
					Text("DXB").font(.largeTitle)
				}
			}
			HStack {
				VStack (alignment: .leading){
					Text("10:00").font(.title3)
				}
				VStack (alignment: .center){
					Text("         ")
				}
				VStack (alignment: .trailing){
					Text("14:00").font(.title3)
				}
			}
			HStack {
				VStack (alignment: .leading){
					Text("Name Of The Passger ").font(.title3)
				}
				VStack (alignment: .center){
					Text("                                     ").font(.title3)
				}
			}
			HStack {
				VStack {
					Text("Gate")
					Text("15F")
				}
				VStack {
					Text("Boards")
					Text("08:45")
				}
				VStack {
					Text("Group")
					Text("A67")
				}
				VStack {
					Text("Seat")
					Text("67F")
				}
			}
			VStack {
				Image(systemName: "photo.fill") //For QR code
			}
		}
	}
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
