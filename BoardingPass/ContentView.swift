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

struct DashedLine: Shape {
	func path(in rect: CGRect) -> Path {
		var p = Path()
		p.move(to: CGPoint(x: rect.minX, y: rect.midY))
		p.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
		return p
	}
}

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
					Text("Flight Date").font(.body)
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
					Text("10:00").font(.body)
					Spacer()
					Text("14:00").font(.body)
				}
				HStack(spacing: 10) {
					Circle()
						.fill(Color(.systemBackground))
						.frame(width: 24, height: 24)
					DashedLine()
						.stroke(style: StrokeStyle(lineWidth: 2, dash: [6]))
						.foregroundStyle(.white.opacity(0.6))
						.frame(height: 1)
					Circle()
						.fill(Color(.systemBackground))
						.frame(width: 24, height: 24)
				}
				.padding(.horizontal, -28)
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
					Image(systemName: "qrcode")
						.font(.system(size : 300))
				}
			}.padding().background(Color.blue).padding()
		}
	}
}

#Preview {
    ContentView()
}
