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

let Fonts = ["largeTitle", "title2" , "callout" ]
struct ContentView: View {
	
	var body: some View {
		ScrollView {
			VStack {
				HStack {
					Text("Flight Name").font(.title2)
					Spacer()
					Text("Flight Number").font(.title2)
				}
				HStack {
					Spacer()
					Text("Flight Date").font(.callout)
				}
				HStack {
					Text("Sharjah Airport").font(.title2)
					Spacer()
					Text("Dubai Airport ").font(.title2)
				}
				HStack {
					Text("SHJ").font(.largeTitle)
					Spacer()
					Image(systemName: "airplane")  .font(.largeTitle)
					Spacer()
					Text("DXB").font(.largeTitle)
				}
				HStack {
					Text("10:00").font(.callout)
					Spacer()
					Text("14:00").font(.callout)
				}
				HStack {
					Text("Name Of The Passger ").font(.title2)
					Spacer()
				}
				HStack {
					Spacer()
					ForEach(Details.allCases) { detail in
						VStack {
							Text(detail.rawValue).font(.callout)
							Text(detail.Value).font(.title2)
						}
						Spacer()
					}
				}
				VStack {
					Spacer()
					Image(systemName: "photo.fill") //For QR code
				}
			}.background(Color.blue).padding(10)
		}
	}
}

#Preview {
    ContentView()
}
