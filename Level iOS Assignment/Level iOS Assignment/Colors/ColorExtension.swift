
import SwiftUI

extension Color {
    static let customBackground = Color(hex: "#0F0622")  // Main background color
    static let exploreBackground = Color(hex: "#1C1334") // Background for explore
    static let learnBackground = Color(hex: "#38216A")   // Background for learn
    static let borderColor = Color(hex: "#8A2BE2")       // Example purple color
    static let textColor = Color(hex: "#64B5F6")
    static let modifiertextcolor = Color(hex:"#8FCECD")// Text color (fixed)

    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let r, g, b: Double
        if hex.count == 6 {
            r = Double((int >> 16) & 0xFF) / 255.0
            g = Double((int >> 8) & 0xFF) / 255.0
            b = Double(int & 0xFF) / 255.0
        } else {
            r = 0
            g = 0
            b = 0
        }
        self.init(red: r, green: g, blue: b)
    }
}
