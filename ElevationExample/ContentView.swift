//
//  ContentView.swift
//  ElevationExample
//
//  Created by Maksym Bobukh on 15.02.2024.
//

import SwiftUI

struct ElevationView: Hashable {
    let number: Int
    let firstColor: Color
    let secondColor: Color
    let firstOpacity: Double
    let secondOpacity: Double
    let firstRadius: CGFloat
    let secondRadius: CGFloat
    let yFirstMove: CGFloat
    let ySecondMove: CGFloat
}

struct ContentView: View {
    
        static let elevationLight: [ElevationView] =
        [
            ElevationView(number: 1, firstColor: Color(hex: "#F7F3F8"), secondColor: Color(hex: "#1A0244"), firstOpacity: 0.01, secondOpacity: 0.05, firstRadius: 4, secondRadius: 2, yFirstMove: 1, ySecondMove: 2),
            ElevationView(number: 2, firstColor: Color(hex: "#F7F3F8"), secondColor: Color(hex: "#1A0244"), firstOpacity: 0.2, secondOpacity: 0.1, firstRadius: 8, secondRadius: 4,yFirstMove: 2, ySecondMove: 4),
            ElevationView(number: 3, firstColor: Color(hex: "#F7F3F8"), secondColor: Color(hex: "#1A0244"), firstOpacity: 0.3, secondOpacity: 0.15,firstRadius: 16, secondRadius: 8, yFirstMove: 4, ySecondMove: 8),
            ElevationView(number: 4, firstColor: Color(hex: "#F7F3F8"), secondColor: Color(hex: "#1A0244"), firstOpacity: 0.4, secondOpacity: 0.2,firstRadius: 32, secondRadius: 16, yFirstMove: 8, ySecondMove: 16)
        ]
    
//    private let elevationLight: [ElevationView] =
//    [
//        ElevationView(number: 1, firstColor: Color(hex: "#F7F3F8"), secondColor: Color(hex: "#1A0244"), firstOpacity: 0.01, secondOpacity: 0.05, firstRadius: 2, secondRadius: 4, yFirstMove: 1, ySecondMove: 2),
//        ElevationView(number: 2, firstColor: Color(hex: "#F7F3F8"), secondColor: Color(hex: "#1A0244"), firstOpacity: 0.2, secondOpacity: 0.1, firstRadius: 4, secondRadius: 8,yFirstMove: 2, ySecondMove: 4),
//        ElevationView(number: 3, firstColor: Color(hex: "#F7F3F8"), secondColor: Color(hex: "#1A0244"), firstOpacity: 0.3, secondOpacity: 0.15,firstRadius: 8, secondRadius: 16, yFirstMove: 8, ySecondMove: 8),
//        ElevationView(number: 4, firstColor: Color(hex: "#F7F3F8"), secondColor: Color(hex: "#1A0244"), firstOpacity: 0.4, secondOpacity: 0.2,firstRadius: 16, secondRadius: 32, yFirstMove: 8, ySecondMove: 16)
//    ]
    
    private let elevationDark: [ElevationView] =
    [
        ElevationView(number: 1, firstColor: Color(hex: "#1A0244"), secondColor: Color(hex: "#1A0244"), firstOpacity: 0.04, secondOpacity: 0.05, firstRadius: 4, secondRadius: 2,  yFirstMove: 1, ySecondMove: 2),
        ElevationView(number: 2, firstColor: Color(hex: "#1A0244"), secondColor: Color(hex: "#1A0244"), firstOpacity: 0.04, secondOpacity: 0.1, firstRadius: 8, secondRadius: 4, yFirstMove: 2, ySecondMove: 4),
        ElevationView(number: 3, firstColor: Color(hex: "#1A0244"), secondColor: Color(hex: "#1A0244"), firstOpacity: 0.08, secondOpacity: 0.1, firstRadius: 16, secondRadius: 8, yFirstMove: 4, ySecondMove: 8),
        ElevationView(number: 4, firstColor: Color(hex: "#1A0244"), secondColor: Color(hex: "#1A0244"), firstOpacity: 0.08, secondOpacity: 0.12, firstRadius: 32, secondRadius: 16, yFirstMove: 8, ySecondMove: 16)
    ]
    
//    private let elevationDark: [ElevationView] =
//    [
//        ElevationView(number: 1, firstColor: Color(hex: "#1A0244"), secondColor: Color(hex: "#1A0244"), firstOpacity: 0.04, secondOpacity: 0.05, firstRadius: 2, secondRadius: 4,  yFirstMove: 1, ySecondMove: 2),
//        ElevationView(number: 2, firstColor: Color(hex: "#1A0244"), secondColor: Color(hex: "#1A0244"), firstOpacity: 0.04, secondOpacity: 0.1, firstRadius: 4, secondRadius: 8, yFirstMove: 2, ySecondMove: 4),
//        ElevationView(number: 3, firstColor: Color(hex: "#1A0244"), secondColor: Color(hex: "#1A0244"), firstOpacity: 0.08, secondOpacity: 0.1, firstRadius: 8, secondRadius: 16, yFirstMove: 4, ySecondMove: 8),
//        ElevationView(number: 4, firstColor: Color(hex: "#1A0244"), secondColor: Color(hex: "#1A0244"), firstOpacity: 0.08, secondOpacity: 0.12, firstRadius: 16, secondRadius: 32, yFirstMove: 8, ySecondMove: 16)
//    ]
    
    private let topElevationLight: [ElevationView] =
    [
        ElevationView(number: 1, firstColor: Color(hex: "#F7F3F8"), secondColor: Color(hex: "#1A0244"), firstOpacity: 0.01, secondOpacity: 0.05, firstRadius: 4, secondRadius: 2, yFirstMove: -1, ySecondMove: -2),
        ElevationView(number: 2, firstColor: Color(hex: "#F7F3F8"), secondColor: Color(hex: "#1A0244"), firstOpacity: 0.2, secondOpacity: 0.1, firstRadius: 8, secondRadius: 4, yFirstMove: -2, ySecondMove: -4),
        ElevationView(number: 3, firstColor: Color(hex: "#F7F3F8"), secondColor: Color(hex: "#1A0244"), firstOpacity: 0.3, secondOpacity: 0.15, firstRadius: 16, secondRadius: 8, yFirstMove: -4, ySecondMove: -8),
        ElevationView(number: 4, firstColor: Color(hex: "#F7F3F8"), secondColor: Color(hex: "#1A0244"), firstOpacity: 0.4, secondOpacity: 0.2, firstRadius: 32, secondRadius: 16, yFirstMove: -8, ySecondMove: -16)
    ]
    
//    private let topElevationLight: [ElevationView] =
//    [
//        ElevationView(number: 1, firstColor: Color(hex: "#F7F3F8"), secondColor: Color(hex: "#1A0244"), firstOpacity: 0.01, secondOpacity: 0.05, firstRadius: 2, secondRadius: 4, yFirstMove: -1, ySecondMove: -2),
//        ElevationView(number: 2, firstColor: Color(hex: "#F7F3F8"), secondColor: Color(hex: "#1A0244"), firstOpacity: 0.2, secondOpacity: 0.1, firstRadius: 4, secondRadius: 8, yFirstMove: -2, ySecondMove: -4),
//        ElevationView(number: 3, firstColor: Color(hex: "#F7F3F8"), secondColor: Color(hex: "#1A0244"), firstOpacity: 0.3, secondOpacity: 0.15, firstRadius: 8, secondRadius: 16, yFirstMove: -4, ySecondMove: -8),
//        ElevationView(number: 4, firstColor: Color(hex: "#F7F3F8"), secondColor: Color(hex: "#1A0244"), firstOpacity: 0.4, secondOpacity: 0.2, firstRadius: 16, secondRadius: 32, yFirstMove: -8, ySecondMove: -16)
//    ]
    
    private let topElevationDark: [ElevationView] =
    [
        ElevationView(number: 1, firstColor: Color(hex: "#1A0244"), secondColor: Color(hex: "#1A0244"), firstOpacity: 0.04, secondOpacity: 0.05, firstRadius: 4, secondRadius: 2, yFirstMove: -1, ySecondMove: -2),
        ElevationView(number: 2, firstColor: Color(hex: "#1A0244"), secondColor: Color(hex: "#1A0244"), firstOpacity: 0.04, secondOpacity: 0.1, firstRadius: 8, secondRadius: 4, yFirstMove: -2, ySecondMove: -4),
        ElevationView(number: 3, firstColor: Color(hex: "#1A0244"), secondColor: Color(hex: "#1A0244"), firstOpacity: 0.08, secondOpacity: 0.1, firstRadius: 16, secondRadius: 8, yFirstMove: -4, ySecondMove: -8),
        ElevationView(number: 4, firstColor: Color(hex: "#1A0244"), secondColor: Color(hex: "#1A0244"), firstOpacity: 0.08, secondOpacity: 0.12, firstRadius: 32, secondRadius: 16, yFirstMove: -8, ySecondMove: -16)
    ]
    
//    private let topElevationDark: [ElevationView] =
//    [
//        ElevationView(number: 1, firstColor: Color(hex: "#1A0244"), secondColor: Color(hex: "#1A0244"), firstOpacity: 0.04, secondOpacity: 0.05, firstRadius: 2, secondRadius: 4, yFirstMove: -1, ySecondMove: -2),
//        ElevationView(number: 2, firstColor: Color(hex: "#1A0244"), secondColor: Color(hex: "#1A0244"), firstOpacity: 0.04, secondOpacity: 0.1, firstRadius: 4, secondRadius: 8, yFirstMove: -2, ySecondMove: -4),
//        ElevationView(number: 3, firstColor: Color(hex: "#1A0244"), secondColor: Color(hex: "#1A0244"), firstOpacity: 0.08, secondOpacity: 0.1, firstRadius: 8, secondRadius: 16, yFirstMove: -4, ySecondMove: -8),
//        ElevationView(number: 4, firstColor: Color(hex: "#1A0244"), secondColor: Color(hex: "#1A0244"), firstOpacity: 0.08, secondOpacity: 0.12, firstRadius: 16, secondRadius: 32, yFirstMove: -8, ySecondMove: -16)
//    ]
    
    
    var body: some View {
        ScrollView {
            VStack {
                elevation(for: ContentView.elevationLight, backgroundColor: Color(hex: "#F7F3F8"), numberColor: .black)
                
                elevation(for: elevationDark, backgroundColor: Color(hex: "#837C9F"), numberColor: .white)
                
                elevation(for: topElevationLight, backgroundColor: Color(hex: "#F7F3F8"), numberColor: .black)
                
                elevation(for: topElevationDark, backgroundColor: Color(hex: "#837C9F"), numberColor: .white)
                
                Rectangle()
                    .frame(height: 100)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(Color(hex: "#F7F3F8"))
                    .cornerRadius(8)
                    .padding(.vertical)
                    .elevation(side: .bottom, level: .four)
                    
                
            }
            .padding()
        }
    }
}

enum ElevationSide {
    case top
    case bottom
}

enum ElevationLevel {
    case one
    case two
    case three
    case four
}

struct ElevationModifier: ViewModifier {
    let side: ElevationSide
    let level : ElevationLevel
    
    private let elevationLight: [ElevationView] =
    [
        ElevationView(number: 1, firstColor: Color(hex: "#F7F3F8"), secondColor: Color(hex: "#1A0244"), firstOpacity: 0.01, secondOpacity: 0.05, firstRadius: 4, secondRadius: 2, yFirstMove: 1, ySecondMove: 2),
        ElevationView(number: 2, firstColor: Color(hex: "#F7F3F8"), secondColor: Color(hex: "#1A0244"), firstOpacity: 0.2, secondOpacity: 0.1, firstRadius: 8, secondRadius: 4,yFirstMove: 2, ySecondMove: 4),
        ElevationView(number: 3, firstColor: Color(hex: "#F7F3F8"), secondColor: Color(hex: "#1A0244"), firstOpacity: 0.3, secondOpacity: 0.15,firstRadius: 16, secondRadius: 8, yFirstMove: 4, ySecondMove: 8),
        ElevationView(number: 4, firstColor: Color(hex: "#F7F3F8"), secondColor: Color(hex: "#1A0244"), firstOpacity: 0.4, secondOpacity: 0.2,firstRadius: 32, secondRadius: 16, yFirstMove: 8, ySecondMove: 16)
    ]
    
    private let topElevationLight: [ElevationView] =
    [
        ElevationView(number: 1, firstColor: Color(hex: "#F7F3F8"), secondColor: Color(hex: "#1A0244"), firstOpacity: 0.01, secondOpacity: 0.05, firstRadius: 4, secondRadius: 2, yFirstMove: -1, ySecondMove: -2),
        ElevationView(number: 2, firstColor: Color(hex: "#F7F3F8"), secondColor: Color(hex: "#1A0244"), firstOpacity: 0.2, secondOpacity: 0.1, firstRadius: 8, secondRadius: 4, yFirstMove: -2, ySecondMove: -4),
        ElevationView(number: 3, firstColor: Color(hex: "#F7F3F8"), secondColor: Color(hex: "#1A0244"), firstOpacity: 0.3, secondOpacity: 0.15, firstRadius: 16, secondRadius: 8, yFirstMove: -4, ySecondMove: -8),
        ElevationView(number: 4, firstColor: Color(hex: "#F7F3F8"), secondColor: Color(hex: "#1A0244"), firstOpacity: 0.4, secondOpacity: 0.2, firstRadius: 32, secondRadius: 16, yFirstMove: -8, ySecondMove: -16)
    ]

    func body(content: Content) -> some View {
      let elevationDetails = ElevationDetails(side: side, level: level)
      content
        .shadow(elevationDetails.firstShadow)
        .shadow(elevationDetails.secondShadow)
        
    }
}

struct ElevationDetails {
  let firstShadow: ShadowDetails
  let secondShadow: ShadowDetails
  
  init(side: ElevationSide, level: ElevationLevel) {
    let firstShadowColor: Color
    let secondShadowColor: Color
    
    let firstShadowRadius: Color
    let secondShadowRadius: Color
    
    let firstShadowYOffset: Color
    let secondShadowYOffset: Color
    
    switch level {
      case .one:
        firstShadowColor = //
        secondShadowColor = //
        firstShadowRadius = //
        secondShadowRadius = //
      case .two:
        <#code#>
      case .three:
        <#code#>
      case .four:
        <#code#>
    }
    
    switch side {
      case .top:
        firstShadowYOffset = //
        secondShadowYOffset = //
      case .bottom:
        <#code#>
    }
    
    firstShadow = ShadowDetails(color: <#T##Color#>, radius: <#T##CGFloat#>, xOffset: <#T##CGFloat#>, yOffset: <#T##CGFloat#>)
    secondShadow = ShadowDetails(color: <#T##Color#>, radius: <#T##CGFloat#>, xOffset: <#T##CGFloat#>, yOffset: <#T##CGFloat#>)
  }
}

struct ShadowDetails: Hashable {
  let color: Color
  var radius: CGFloat
  var xOffset: CGFloat
  var yOffset: CGFloat
  
  init(color: Color, radius: CGFloat, xOffset: CGFloat = 0, yOffset: CGFloat = 0) {
    self.color = color
    self.radius = radius
    self.xOffset = xOffset
    self.yOffset = yOffset
  }
}

extension View {
  func shadow(_ shadowDetails: ShadowDetails) -> some View {
    self.shadow(
      color: shadowDetails.color,
      radius: shadowDetails.radius,
      x: shadowDetails.xOffset,
      y: shadowDetails.yOffset
    )
  }
}


extension View {
  func elevation(side: ElevationSide, level: ElevationLevel) -> some View {
    modifier(ElevationModifier(side: side, level: level))
  }
}

#Preview {
    ContentView()
}

extension ContentView {
    func elevation(for elevation: [ElevationView], backgroundColor: Color, numberColor: Color) -> some View {
        HStack {
            ForEach(elevation, id: \.self) { i in
                Text("\(i.number)")
                    .frame(width: 64, height: 64)
                    .foregroundColor(numberColor)
                    .background(
                       backgroundColor
                            .cornerRadius(8)
                    )
                    .padding(.horizontal,6)
                    .shadow(color: i.firstColor.opacity(i.firstOpacity),radius: i.firstRadius, x: 0, y: i.yFirstMove)
                    .shadow(color: i.secondColor.opacity(i.secondOpacity),radius: i.secondRadius, x: 0, y: i.ySecondMove)
            }
        }
        .frame(height: 128)
        .frame(maxWidth: .infinity)
        .background(
            backgroundColor
                .cornerRadius(8)
        )
        .padding(.top, 20)
    }
}

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
