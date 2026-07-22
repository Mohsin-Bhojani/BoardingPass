//
//  ContentView.swift
//  BoardingPass
//
//  Created by Mohsin on 21/07/2026.
//

import SwiftUI
import GeoToolbox

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
	@Environment(\.colorScheme) private var colorScheme
	
	private let cardPadding: 	CGFloat = 16
	private let notchSize: 		CGFloat = 24
	
	
	private var notchOverhang: CGFloat {
		-(cardPadding + notchSize / 2)
	}

	private var cardColor: Color {
		colorScheme == .light
			? Color(red: 0.20, green: 0.55, blue: 1.00)
			: Color(red: 0.10, green: 0.35, blue: 0.75)
	}
	
	private var textColor: Color {
		colorScheme == .light
		? Color(red: 0.10, green: 0.35, blue: 0.75)
		: Color(red: 0.20, green: 0.55, blue: 1.00)
	}
	
	var body: some View {
		VStack {
			VStack {
				HStack {
					Text("Flight Name").font(.title2).foregroundStyle(textColor)
					Spacer()
					Text("AJ90067").font(.title2).foregroundStyle(textColor)
				}
				HStack {
					Spacer()
					Text("Flight Date").font(.body).foregroundStyle(textColor)
				}
				HStack {
					Text("Sharjah Airport").font(.title2).foregroundStyle(textColor)
					Spacer()
					Text("Dubai Airport ").font(.title2).foregroundStyle(textColor)
				}
				HStack {
					Text("SHJ").font(.largeTitle)
					Spacer()
					Image(systemName: "airplane").font(.largeTitle)
					Spacer()
					Text("DXB").font(.largeTitle)
				}
				HStack {
					Text("10:00").font(.body).foregroundStyle(textColor)
					Spacer()
					Text("14:00").font(.body).foregroundStyle(textColor)
				}
				HStack(spacing: 10) {
					Circle()
						.fill(Color(.systemBackground))
						.frame(width: notchSize, height: notchSize)
					DashedLine()
						.stroke(style: StrokeStyle(lineWidth: 2, dash: [6]))
						.foregroundStyle(.white.opacity(0.6))
						.frame(height: 1)
					Circle()
						.fill(Color(.systemBackground))
						.frame(width: notchSize, height: notchSize)
				}
				.padding(.horizontal, notchOverhang)
				HStack {
					Text("Name Of The Passger ").font(.title2)
					Spacer()
				}
				HStack {
					Spacer()
					ForEach(Details.allCases) { detail in
						VStack {
							Text(detail.rawValue).font(.callout).foregroundStyle(textColor)
							Text(detail.Value).font(.title2)
						}
						Spacer()
					}
				}
				VStack {
					Image(systemName: "qrcode")
						.resizable()
						.scaledToFit()
						.containerRelativeFrame(.horizontal) { width, _ in width * 0.6
						}
						.padding(.top, 24)
				}
			}.padding(cardPadding)
			.background(cardColor)
			.clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
			.padding()
		}
	}
}

#Preview {
    ContentView()
}
