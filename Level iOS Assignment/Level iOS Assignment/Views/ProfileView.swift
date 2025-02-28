
import SwiftUI
struct ProfileView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.customBackground.ignoresSafeArea()
                ScrollView {
                    VStack(spacing: 0) {
                        StatusBarView()
                            .padding(.top, 30)
                    }
                    VStack {
                        profileview()
                        
                        LeagueView()
                            .padding()
                        LibraryInsightsTabView()
                       
                        Recent3view()
                            .padding()
                        
                        OptionsView()
                        
                        MindfulHeader3View()
                        
                        CustomTabBar3View()
                        
                    }
                }
            }
            .ignoresSafeArea(.all)
        }
    }
}
struct profileview:View {
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

            Spacer()
            
            VStack(alignment: .leading, spacing: 4){
                HStack{
                    Text("Sourav")
                        .font(.headline)
                        .foregroundColor(.white)
                    Image(systemName: "crown.fill")
                        .foregroundColor(.yellow)
                        .font(.caption)
                    Spacer()
                    HStack {
                        Image("Gear")
                            .frame(width: 28,height: 28)
                            .foregroundStyle(Color.white)
                        
                    }
                }
                
                HStack{
                    Text("Level Premium User")
                        .font(.headline)
                        .foregroundStyle(Color.yellow)
                    
                    Image(systemName: "chevron.right")
                        .foregroundColor(.yellow)
                        .font(.footnote)
                    
                    
                    Spacer()
                    
                }
                
            }
            Spacer()
            
        }
        .frame(width: 390,height: 75)
        .padding()
    }
    
}
struct LeagueView:View {
    var body: some View {
        HStack(spacing:12){
            VStack{
                HStack{
                    Image("emoji")
                        .frame(width: 28,height: 28)
                    VStack {
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
            .frame(width: 182, height: 62)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.white.opacity(0.5))
            )
            VStack{
                HStack{
                    Image("Gold")
                        .frame(width: 28,height: 28)
                            
                    VStack {
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
struct LibraryInsightsTabView: View {
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
                
                NavigationLink(destination: SettingView()) {
                    Text("Insights")
                        .font(.headline)
                        .foregroundColor(
                            selectedTab == "Insights" ? .white : .gray
                        )
                }
                .frame(maxWidth: .infinity)

                Spacer()
            }
            .padding()
            .padding(.top, 20)
            
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

struct Recent3view:View {
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            HStack {
                Text("Recents")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.leading, 20)
                Spacer()
                Text("See All")
                    .font(.caption)
                    .font(.system(size: 16, weight: .regular))
                    .foregroundColor(.white)
                    .padding(.leading, 20)
            }
            
            HStack{
                VStack{
                    Image("Card top half")
                    Text("Mediation .5Mins")
                        .foregroundStyle(Color.modifiertextcolor)
                    Spacer()
                    
                    Text("workplace Anxiety")
                        .foregroundStyle(Color.white)
                        .fontWeight(.bold)
                      
                    
                    Text("Avi arya")
                        .foregroundStyle(Color.white)
                    
                }
                VStack{
                    Image("Card top half (1)")
                    Text("Mediation .6Mins")
                        .foregroundStyle(Color.modifiertextcolor)
                    Spacer()
                    
                    Text("workplace Anxiety")
                        .foregroundStyle(Color.white)
                        .fontWeight(.bold)
                    
                    Text("Avi arya")
                        .foregroundStyle(Color.white)
                    
                }
                VStack{
                    Image("Card top half (2)")
                    Text("Mediation Series")
                        .foregroundStyle(Color.modifiertextcolor)
                      
                    Spacer()
                    Text("workplace Anxiety")
                        .foregroundStyle(Color.white)
                        .fontWeight(.bold)
                    
                    Text("Avi arya")
                        .foregroundStyle(Color.white)
                    
                }


                
            }
         
        
        }
        .frame(width: 393,height: 286)
        .padding()
     

    
    }
        
        
}
struct OptionRowModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 393, height: 56)
            .cornerRadius(10)
    }
}
struct OptionsView: View {
    var body: some View {
        VStack {
            OptionRow(imageName: "Heart", text: "My Favourite")
            OptionRow(imageName: "Download", text: "Downloads")
            OptionRow(imageName: "playlist", text: "My Playlists")
            OptionRow(imageName: "Book", text: "My Journal Entries")
        }
        .padding(10)
    }
}

struct OptionRow: View {
    var imageName: String
    var text: String
    
    var body: some View {
        HStack {
            Image(imageName)
                .frame(width: 36, height: 36)
            
            Text(text)
                .foregroundStyle(Color.white)
            
            Spacer()
            
            Image(systemName: "arrow.forward")
                .foregroundStyle(Color.white)
                .padding(.trailing, 18)
        }
        .modifier(OptionRowModifier())
    }
}

       
struct MindfulHeader3View: View {
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

struct CustomTabBar3View: View {
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

struct TabBar3Item: View {
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
        

#Preview {
    ProfileView()
}
