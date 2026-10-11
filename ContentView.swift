
import SwiftUI

private let roboBlue = Color(red: 0.10, green: 0.42, blue: 0.98)

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(
                    colors: [Color(red: 0.025, green: 0.055, blue: 0.13), .black],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()

                VStack(spacing: 24) {
                    Image(systemName: "gamecontroller.fill")
                        .font(.system(size: 60))
                        .foregroundStyle(roboBlue)

                    Text("ROBO iOS")
                        .font(.largeTitle.bold())
                        .foregroundStyle(.white)

                    Text("TOOLS • UPDATES • SUPPORT")
                        .font(.caption.bold())
                        .tracking(2)
                        .foregroundStyle(.blue)

                    NavigationLink("About ROBO") {
                        Text("About ROBO")
                    }
                    .buttonStyle(.borderedProminent)

                    NavigationLink("Updates") {
                        Text("Latest ROBO iOS updates")
                    }
                    .buttonStyle(.bordered)

                    NavigationLink("Support") {
                        Text("ROBO iOS Support")
                    }
                    .buttonStyle(.bordered)
                }
                .padding()
            }
        }
        .tint(roboBlue)
    }
}
