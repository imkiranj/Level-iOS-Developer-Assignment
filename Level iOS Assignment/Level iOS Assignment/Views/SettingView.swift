import SwiftUI
import UIKit
import Charts
struct SettingView:View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color.customBackground.ignoresSafeArea()
                ScrollView{
                    VStack(spacing:0){
                        statusview()

                    }
                    VStack{
                        profile1view()
                            .padding()
                        leagueview()
                            .padding()
                        LibraryInsightTabView()
                            .padding()
                        MindfulnessCard()
                            .padding()
                        comparison()
                            .padding()
                        MindfulnessView()
                            .padding()
                        staticsview()

                        MindfulHeader4View()
                            .padding()
                        CustomTabBar4View()
                        
                    }
                }
             
            }
        }
    }
}

struct statusview:View{
    var body: some View{
        HStack{
            Text("9.41")
                .font(.system(size: 14,weight: .bold))
                .foregroundStyle(Color.white)
               
            Spacer()
            
            HStack(spacing:5){
                Image(systemName: "cellularbars")
                    .foregroundColor(.white)
                Image(systemName: "wifi")
                    .foregroundColor(.white)
                Image(systemName: "battery.100")
                    .foregroundColor(.white)
            }
            
        }
       
        .padding(.leading,20)
        .padding(.horizontal,30)
        .padding()
    }
}
struct profile1view:View {
    var body: some View {
        HStack(spacing: 12){
            ZStack {
                // Main Circle
                Circle()
                    .fill(Color.green.opacity(0.8))
                    .frame(width: 70, height: 70)
                    .overlay(
                        Text("S")
                            .font(.title)
                            .foregroundStyle(Color.white)
                    )

                // Edit (Pen) Icon at the Bottom-Right
                Circle()
                    .fill(Color.exploreBackground)
                    .frame(width: 24, height: 24)
                    .overlay(
                        Image(systemName: "pencil")
                            .foregroundColor(.purple)
                            .font(.system(size: 14))
                    )
                    .offset(x: 25, y: 25) // Positioning at bottom-right
            }
            .frame(width: 70, height: 70) // Ensure proper alignment

            .padding(.leading,20)
            Spacer()
            VStack(alignment: .leading,spacing: 4){
                HStack{
                    Text("Sourav")
                        .font(.headline)
                        .foregroundColor(.white)
                      
        
                    Spacer()
                    HStack{
                        Image("Gear")
                            .frame(width: 28,height: 28)
                            .foregroundStyle(Color.white)
                    }
                }
                .padding()
                Button(action: {
                    print("Join Level Premium tapped")
                }) {
                    HStack(spacing: 6) {
                        Image(systemName: "crown.fill")
                            .foregroundColor(
                                Color(hex: "#FFD700")
                            )
                                
                        Text("Join Level Premium")
                            .font(.system(size: 14, weight: .medium))
                            .foregroundColor(Color(hex: "#F8C400"))
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                    .background(Color(hex: "#1A1526"))
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color(hex: "#F8C400"), lineWidth: 1)
                    )
                }
                
            }
                
            
        }
    }
}
struct leagueview:View {
    var body: some View {
        HStack(spacing:20){
            VStack{
                HStack{
                    Image("emoji")
                        .frame(width: 28,height: 28)
                    VStack{
                        Text("17")
                            .font(.caption)
                            .fontWeight(.bold)
                            .foregroundStyle(Color.white)
                        Text("Day Streak")
                            .font(.caption)
                            .foregroundStyle(Color.white)
                    }
                }
            }
            .padding()
            .frame(width: 182,height: 62)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.white.opacity(0.5))
            )
            VStack{
                HStack{
                    Image("Gold")
                        .frame(width: 28,height: 28)
                    VStack{
                        Text("#04")
                            .font(.caption)
                            .fontWeight(.bold)
                            .foregroundStyle(Color.white)
                        Text("Day Streak")
                            .font(.caption)
                            .foregroundStyle(Color.white)
                    }
                }
            }
            .padding()
            .frame(width: 182, height: 62)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.white.opacity(0.5))
            )
        }
    }
}
struct LibraryInsightTabView: View {
    @State private var selectedTab = "My Library"
    
    var body: some View {
        VStack(spacing: 5) {
            HStack {
                Spacer()
                
                Button(action: {
                    selectedTab = "My Library"
                }) {
                    Text("My Library")
                        .font(.headline)
                        .foregroundColor(
                            selectedTab == "My Library" ? .white : .gray
                        )
                }
                .frame(maxWidth: .infinity)
                
                Button(action: {
                    selectedTab = "Insights2"
                }) {
                    Text("Insights")
                        .font(.headline)
                        .foregroundColor(
                            selectedTab == "Insights2" ? .white : .gray
                        )
                }
                .frame(maxWidth: .infinity)
                
                Spacer()
            }
            .padding()
            .padding(.top,20)
            
            // Underline Indicator (Half Width)
            HStack {
                if selectedTab == "Insights" {
                    Spacer()
                }
                
                Rectangle()
                    .frame(
                        width: 150,
                        height: 2
                    ) // Adjust width for half portion
                    .foregroundColor(.white)
                    .animation(.easeInOut, value: selectedTab)
                
                if selectedTab == "My Library" {
                    Spacer()
                }
            }
            .padding(.horizontal, 60) // Adjust spacing
        }

    }
}
struct MindfulnessCard: View {
    var body: some View {
        HStack{
            // Left Section with Icon and Percentage
            HStack(spacing: 4) {
                Image("arrow")
                    .frame(width: 15,height: 30)
                    .font(.system(size: 24))
                    .foregroundColor(Color(hex: "#A9E6E0"))
                    .padding(.leading,20)
                
                Text("30%")
                    .frame(width: 57,height: 17)
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(Color(hex: "#A9E6E0"))
            }
            
            // Divider
            Rectangle()
                .frame(width: 1, height: 60)
                .foregroundColor(Color.white.opacity(0.5))
            
            // Right Section with Text
            VStack(alignment: .leading, spacing: 2) {
                Text("Your mindfulness practice")
                    .font(.system(size: 16))
                    .foregroundColor(.white.opacity(0.8))
                
                Text("increased by **30%** this week")
                    .font(.system(size: 16))
                    .foregroundColor(.white.opacity(0.9))
            }
            .padding(.leading, 20)
            
            Spacer()
            
            
        }
        
        .padding()
        .frame(width: 384, height: 84)
        .background(
            LinearGradient(
                gradient: Gradient(colors: [
                    Color(hex: "#0E1A2B"), // Dark blue
                    Color(hex: "#2C5A63")  // Teal
                ]),
                startPoint: .leading,
                endPoint: .trailing
            )
        )
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(color: .black.opacity(0.2), radius: 4, x: 0, y: 2)
    }
    
}
    
struct comparison:View {
    var body: some View {
        ZStack(alignment: .topLeading){
            // Background with rounded corners
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(hex: "#282234").opacity(0.5))
                .frame(width: 389, height: 370)
            
            // Content
            VStack(alignment: .leading, spacing: 12){
                Text("Weekly Comparison")
                    .font(.headline)
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                    .padding(.leading,10)
                
                Text("This week, your average number of activities dropped 30% from last week. To boost your consistency commit to streaks after an activity.")
                    .foregroundColor(.white)
                    .font(.system(size: 14))
                    .frame(width: 320,height: 60)
            }
            .padding(.top,35)
            .padding(.leading,32)
            
            HStack {
                VStack(alignment: .leading,spacing: 60){
                    VStack{
                        Text("325")
                            .font(.system(size: 18, weight: .bold))
                            .foregroundColor(.black)
                        
                        Text("XP")
                            .font(.system(size: 14, weight: .medium))
                            .foregroundColor(.black)
                        
                    }
                    .frame(width: 61, height: 120)
                    .background(
                        LinearGradient(
                            gradient: Gradient(
                                colors: [
                                    Color.blue.opacity(0.4),
                                    Color.purple.opacity(0.6)
                                ]
                            ),
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                }
                .padding(.top,200)
                .padding(.leading,97)
                
                VStack(alignment: .leading,spacing: 20){
                    VStack{
                        Text("415")
                            .font(.system(size: 18, weight: .bold))
                            .foregroundColor(.black)
                        
                        Text("XP")
                            .font(.system(size: 14, weight: .medium))
                            .foregroundColor(.black)
                        
                    }
                    .frame(width: 60, height: 136)
                    .background(
                        LinearGradient(
                            gradient: Gradient(
                                colors: [
                                    Color.blue.opacity(0.4),
                                    Color.purple.opacity(0.6)
                                ]
                            ),
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                }
                .padding(.top,200)
                .padding(.leading,97)
            }
        }
        .padding(.leading,20)
    }
    }



struct MindfulnessBarChartView: UIViewRepresentable {
    let data: [CGFloat]
    let days: [String]

    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        view.backgroundColor = UIColor.clear

        // Bar chart container
        let barChartContainer = UIView()
        barChartContainer.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(barChartContainer)

        NSLayoutConstraint.activate([
            barChartContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            barChartContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            barChartContainer.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            barChartContainer.heightAnchor.constraint(equalToConstant: 150)
        ])

        let barWidth: CGFloat = 18
        let barSpacing: CGFloat = 25
        let maxBarHeight: CGFloat = 110

        for (index, value) in data.enumerated() {
            let bar = UIView()
            bar.backgroundColor = UIColor.purple.withAlphaComponent(0.8)
            bar.layer.cornerRadius = 5
            bar.translatesAutoresizingMaskIntoConstraints = false

            let barHeight = (value / maxBarHeight) * 100  // Normalize height
            barChartContainer.addSubview(bar)

            NSLayoutConstraint.activate([
                bar.widthAnchor.constraint(equalToConstant: barWidth),
                bar.heightAnchor.constraint(equalToConstant: barHeight),
                bar.bottomAnchor.constraint(equalTo: barChartContainer.bottomAnchor),
                bar.leadingAnchor.constraint(equalTo: barChartContainer.leadingAnchor, constant: CGFloat(index) * (barWidth + barSpacing))
            ])

            // Add labels for days
            let label = UILabel()
            label.text = days[index]
            label.textColor = .white
            label.font = UIFont.systemFont(ofSize: 12, weight: .bold)
            label.textAlignment = .center
            label.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(label)

            NSLayoutConstraint.activate([
                label.topAnchor.constraint(equalTo: bar.bottomAnchor, constant: 5),
                label.centerXAnchor.constraint(equalTo: bar.centerXAnchor)
            ])
        }

        // Add Dashed Line
        let dashedLine = DashedLineView()
        dashedLine.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(dashedLine)

        NSLayoutConstraint.activate([
            dashedLine.topAnchor.constraint(equalTo: barChartContainer.topAnchor, constant: 20),
            dashedLine.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            dashedLine.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            dashedLine.heightAnchor.constraint(equalToConstant: 100)
        ])

        return view
    }

    func updateUIView(_ uiView: UIView, context: Context) {
        // No updates needed for now
    }
}

// UIView for Dashed Line
class DashedLineView: UIView {
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: rect.minX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))

        let dashedLinePattern: [NSNumber] = [5, 5]  // Dash pattern
        let shapeLayer = CAShapeLayer()
        shapeLayer.strokeColor = UIColor.white.withAlphaComponent(0.5).cgColor
        shapeLayer.lineWidth = 1
        shapeLayer.lineDashPattern = dashedLinePattern
        shapeLayer.path = path.cgPath
        layer.addSublayer(shapeLayer)
    }
    
}
struct MindfulnessView: View {
    let data: [CGFloat] = [127, 41, 90, 20, 15, 68, 114] // Bar heights
    let days: [String] = ["M", "T", "W", "T", "F", "S", "S"] // Days of the week

    var body: some View {
        ZStack {
            // Background Card
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(hex: "#282234"))
                .frame(width: 350, height: 370)
                .shadow(radius: 5)

            VStack(alignment: .leading, spacing: 16) {
                // Title
                Text("Mindful Days This Week")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.white)

                // Description
                Text("This week, You were Mindful for 5 days! To prevent breaking your streak, try using Streak Freeze!")
                    .foregroundColor(.white.opacity(0.8))
                    .font(.system(size: 14))
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)

                // Bar Chart
                MindfulnessBarChartView(data: data, days: days)
                    .frame(width: 300, height: 150)
                    .padding(.top, 10)

                // Legend
                HStack(spacing: 12) {
                    legendItem(color: LinearGradient(gradient: Gradient(colors: [Color.purple.opacity(0.8), Color.purple.opacity(0.3)]), startPoint: .top, endPoint: .bottom), text: "Activities Completed")
                    
                    Rectangle()
                        .frame(width: 20, height: 1)
                        .foregroundColor(.white)

                    legendItem(color: .white, text: "App's User Average")
                }
                .padding(20)
                .padding(.leading)
            }
            .padding(20)
            .padding(.top, 35)
            .padding(.leading, 50)
        }
    }

    // Reusable Legend Item
    @ViewBuilder
    private func legendItem(color: Color, text: String) -> some View {
        HStack(spacing: 6) {
            Circle()
                .fill(color)
                .frame(width: 14, height: 14)
            Text(text)
                .font(.system(size: 14))
                .foregroundColor(.white.opacity(0.8))
        }
    }

    @ViewBuilder
    private func legendItem(color: LinearGradient, text: String) -> some View {
        HStack(spacing: 6) {
            Circle()
                .fill(color)
                .frame(width: 14, height: 14)
            Text(text)
                .font(.system(size: 14))
                .foregroundColor(.white.opacity(0.8))
        }
    }
}




struct staticsview:View {
    var body: some View {
        VStack(alignment: .leading, spacing: 2){
            Text("My Statistics:")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
        }
        .padding(.leading,20)
        HStack {
            VStack(spacing: 10) {
                // Title
                Text("Meditation")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(Color(hex: "#00FFAA"))
                ZStack {
                    Image("mediation1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 90, height: 90)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                
                // Bottom Section
                HStack(spacing: 20) {
                    VStack {
                        Text("200")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(Color(hex: "#00FFAA"))
                        Text("Sessions")
                            .font(.system(size: 12))
                            .foregroundColor(.white.opacity(0.7))
                    }
                    
                    VStack {
                        Text("700")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(Color(hex: "#00FFAA"))
                        Text("XP")
                            .font(.system(size: 12))
                            .foregroundColor(.white.opacity(0.7))
                    }
                }
                .padding(.vertical, 5)
            }
            .frame(width: 140, height: 200)
            .background(Color(hex: "#282234")) // Dark background
            .cornerRadius(20)
            .shadow(radius: 5)
            
            VStack(spacing: 10) {
                // Title
                Text("Workout")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(Color(hex: "#00FFAA"))
                ZStack {
                    Image("workout")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 90, height: 90)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                
                // Bottom Section
                HStack(spacing: 20) {
                    VStack {
                        Text("200")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(Color(hex: "#00FFAA"))
                        Text("Minutes")
                            .font(.system(size: 12))
                            .foregroundColor(.white.opacity(0.7))
                    }
                    
                    VStack {
                        Text("700")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(Color(hex: "#00FFAA"))
                        Text("XP")
                            .font(.system(size: 12))
                            .foregroundColor(.white.opacity(0.7))
                    }
                }
                .padding(.vertical, 5)
            }
            .frame(width: 140, height: 200)
            .background(Color(hex: "#282234")) // Dark background
            .cornerRadius(20)
            .shadow(radius: 5)
            
            
            VStack(spacing: 10) {
                // Title
                Text("Journal")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(Color(hex: "#00FFAA"))
                ZStack {
                    Image("Reading")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 90, height: 90)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                
                // Bottom Section
                HStack(spacing: 20) {
                    VStack {
                        Text("200")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(Color(hex: "#00FFAA"))
                        Text("Entries")
                            .font(.system(size: 12))
                            .foregroundColor(.white.opacity(0.7))
                    }
                    
                    VStack {
                        Text("700")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(Color(hex: "#00FFAA"))
                        Text("XP")
                            .font(.system(size: 12))
                            .foregroundColor(.white.opacity(0.7))
                    }
                }
                .padding(.vertical, 5)
            }
            .frame(width: 140, height: 200)
            .background(Color(hex: "#282234")) // Dark background
            .cornerRadius(20)
            .shadow(radius: 5)
        }
        .padding(.leading,30)
        
    }
    
}
struct MindfulHeader4View: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack(spacing: 4) {
                Text("Made Mindfully in")
                    .font(.title2)
                    .foregroundColor(.gray)
                
                Image("flag")
                    .frame(width: 24,height: 24)
            }
            .padding()
            
            Text("Clear Mind")
                .font(.system(size: 40, weight: .bold))
                .foregroundStyle(Color.exploreBackground.opacity(20))
            
            Text("Better Performance")
                .font(.system(size: 40, weight: .bold))
                .foregroundStyle(Color.exploreBackground.opacity(20))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(20)
        .padding(.leading,20)
    }
}

struct CustomTabBar4View: View {
    @State private var selectedTab = 0
    
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                TabBarItem(icon: "house.fill", title: "Today", isSelected: selectedTab == 0)
                    .onTapGesture {
                        selectedTab = 0
                    }
                
                Spacer()
                
                TabBarItem(icon: "magnifyingglass", title: "Explore", isSelected: selectedTab == 1)
                    .onTapGesture {
                        selectedTab = 1
                    }
                
                Spacer()
                
                TabBarItem(icon: "person", title: "You", isSelected: selectedTab == 2)
                    .onTapGesture {
                        selectedTab = 2
                    }
            }
            .padding(.horizontal, 30)
            .padding(.top, 10)
            .padding(.bottom, 20)
            .padding(.leading,20)
            .padding(.trailing,20)
            .background(Color.customBackground)
        }
    }
}

struct TabBar4tem: View {
    let icon: String
    let title: String
    let isSelected: Bool
    
    var body: some View {
        VStack(spacing: 4) {
            Image(systemName: icon)
                .font(.system(size: 22))
                .foregroundColor(isSelected ? .white : .gray)
            
            Text(title)
                .font(.caption)
                .foregroundColor(isSelected ? .white : .gray)
        }
    }
}
#Preview{
    SettingView()
}
