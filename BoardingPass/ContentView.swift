//
//  ContentView.swift
//  BoardingPass
//
//  Created by Mohsin on 21/07/2026.
//

import SwiftUI

enum Details : String , CaseIterable , Identifiable {
	
	case gate 	= "GATE"
	case boards	= "BOARDS"
	case group 	= "GROUP"
	case seat 	= "SEAT"
	
	var id: String {rawValue}
	
	var Value : String {
		switch self {
		case .gate		: "15F"
		case .boards	: "08:45"
		case .group		: "A6"
		case .seat		: "7F"
		}
	}
}

struct ContentView: View {
	
	var body: some View {
		ScrollView {
			VStack {
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
					VStack {
						Text("Flight Date").font(.callout)
					}
				}
				HStack {
					VStack {
						Text("Sharjah Airport").font(.title2)
					}
					Spacer()
					VStack {
						Text("Dubai Airport ").font(.title2)
					}
				}
				HStack {
					VStack {
						Text("SHJ").font(.largeTitle)
					}
					Spacer()
					Image(systemName: "airplane")  .font(.title)
					Spacer()
					VStack {
						Text("DXB").font(.largeTitle)
					}
				}
				HStack {
					VStack{
						Text("10:00").font(.title3)
					}
					Spacer()
					VStack{
						Text("14:00").font(.title3)
					}
				}
				HStack {
					VStack {
						Text("Name Of The Passger ").font(.title3)
					}
					Spacer()
				}
				HStack {
					VStack {
						Text("Gate").font(.callout)
						Text("15F").font(.subheadline)
					}
					Spacer()
					VStack {
						Text("BOARDS").font(.callout)
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
				HStack {
					ForEach(Details) { detail in
						VStack {
							Text(detail.rawValue).font(.subheadline)
							Text(detail.value).font(.callout)
						}
					}
				}
				
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
}
