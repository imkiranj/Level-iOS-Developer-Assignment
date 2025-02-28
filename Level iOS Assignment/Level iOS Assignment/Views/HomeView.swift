
import SwiftUI
struct HomeView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.customBackground.ignoresSafeArea()
                ScrollView {
                    VStack(spacing: 0) {
                        ZStack(alignment: .top) {
                            Image("backgroundimage")
                                .resizable()
                                .frame(
                                    width: UIScreen.main.bounds.width,
                                    height: 266
                                )
                                .clipped()

                            VStack {
                                StatusBarView()
                                    .padding(.top, 30)
                                StatusView()
                                    .padding(.top, 20)
                            }
                        }
                        GetStartedView()

                        Explore1View()

                        RecommendedView()

                        Recentview()
                            .padding()
                        Learnview()
                            .padding()
                        FeaturedView()
                            .padding()
                        MindfulHeaderView()
                            .padding()
                        CustomTabBarView()
                       
                    }
                }
                .ignoresSafeArea(.all)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
    }
}



struct StatusBarView: View {
    var body: some View {
        HStack {
            Text("9:41")
                .font(.system(size: 14, weight: .bold))
                .foregroundColor(.white)

            Spacer()

            HStack(spacing: 5) {
                Image(systemName: "cellularbars")
                    .foregroundColor(.white)
                Image(systemName: "wifi")
                    .foregroundColor(.white)
                Image(systemName: "battery.100")
                    .foregroundColor(.white)
            }
        }
        .padding(.leading,20)
        .padding(.horizontal,20)
        .padding()
    }
}

struct StatusView: View {
    var body: some View {
        HStack(spacing: 16) {
            HStack(spacing: 4) {
                Image("emoji")
                Text("2")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
            }
            .padding(.horizontal, 10)
            .padding(.vertical, 6)
            .background(Color.black.opacity(0.8))
            .cornerRadius(20)

            HStack(spacing: 4) {
                Text("Rank 5")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                Image("Gold")
            }
            .padding(.horizontal, 10)
            .padding(.vertical, 6)
            .background(Color.black.opacity(0.8))
            .cornerRadius(20)

            Spacer()

            Image("gift")
                .foregroundColor(.yellow)
                .font(.title2)
                .padding(.trailing, 20)
        }
        .padding(.horizontal)
        .padding(.leading,20)
    }
}

struct GetStartedView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Get Started")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.leading,20)
                .padding(.top,50)
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.purple, lineWidth: 2)
                    )
              
                
                HStack {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Meditation Series")
                            .font(.system(size: 14))
                            .font(.caption)
                            .foregroundStyle(Color.textColor)
                        
                        Text("Manage Your Emotions")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                          
                        
                        HStack {
                            Image(systemName: "list.bullet")
                                .foregroundColor(.white)
                            Text("9")
                                .foregroundColor(.white)
                        }
                        
                        Text("Ranveer Allahbadia")
                            .font(.subheadline)
                            .foregroundColor(.white)
                    }
                    .padding()

                    Image("Birdart")
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 50))
                        .frame(width: 160, height: 120)
                        

                }
                .background(Color.exploreBackground)
            }
            .frame(width: 391,height: 160)
            .padding()
        }
    }
}
struct Explore1View: View {
    var body: some View {
        VStack(alignment: .leading,spacing: 2) {
                // Title
                Text("Explore")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.leading, 20)
                
                VStack{
                    HStack{
                        Image("Meditation")
                            .scaledToFit()
                            .frame(width: 88,height: 88)
                            .background(Color.exploreBackground)
                        Image("Workout")
                            .scaledToFit()
                            .frame(width: 88,height: 88)
                            .background(Color.exploreBackground)
                        Image("sleep")
                            .scaledToFit()
                            .frame(width: 88,height: 88)
                            .background(Color.exploreBackground)
                        
                        NavigationLink(destination: ExploreView()) {
                            Image("more")
                                .scaledToFit()
                                .frame(width: 88, height: 88)
                                .background(Color.exploreBackground)
                        }

                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    
                }
                .frame(width: 391,height: 136)
                .cornerRadius(20)
                }
        .padding()
        }
        
    
}
struct RecommendedView:View {
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            HStack {
                Text("Recommended For You")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.leading, 20)
            }
            
            HStack {
                let items = [
                    ("Card top half", "Meditation"),
                    ("Card top half (1)", "Meditation Series"),
                    ("Card top half (2)", "Meditation Series")
                ]
                
                
                ForEach(items, id: \.0) { item in
                    VStack {
                        Image(item.0)
                        Text(item.1)
                            .foregroundStyle(Color.blue)
                        Spacer()
                        Text("10MIN")
                        Text("Freedom Series")
                            .foregroundStyle(Color.white)
                        Text("Akhil Aryan")
                            .foregroundStyle(Color.white)
                    }
                }
            }
            .padding()
            .foregroundStyle(Color.modifiertextcolor)
        }
        .frame(width: 393,height: 286)
        .padding()
      
        .background(Color.customBackground)
        
    }
 }
struct Recentview:View {
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
            .padding(.top,20)
            
            HStack {
                let items = [
                    ("Card top half", "Meditation"),
                    ("Card top half (1)", "Meditation Series"),
                    ("Card top half (2)", "Meditation Series")
                ]
                
                
                ForEach(items, id: \.0) { item in
                    VStack {
                        Image(item.0)
                        Text(item.1)
                            .foregroundStyle(Color.blue)
                        Spacer()
                        Text("10MIN")
                        Text("Freedom Series")
                            .foregroundStyle(Color.white)
                        Text("Akhil Aryan")
                            .foregroundStyle(Color.white)
                    }
                }
            }
            .padding()
            .foregroundStyle(Color.modifiertextcolor)
        }
        .frame(width: 393,height: 286)
        .padding()
      
        .background(Color.customBackground)
        
                  
    }
 
        
}

struct Learnview:View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Learn")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.leading, 28)
            HStack {
                   Image("Mediateimage")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 151, height: 100)
                            .cornerRadius(10)
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("How to meditate like a monk")
                                .font(.headline)
                                .foregroundColor(.white)
                            Text("Read More")
                                .font(.subheadline)
                                .foregroundColor(.white)
                        }
                        Spacer()
                        
                        Image("shareicon") // Share icon
                            .foregroundColor(.white)
                            .font(.title2)
                            .frame(width: 38,height: 38)
                    }
                    .padding()
                    .frame(width: 390, height: 150)
                    .background(Color.learnBackground)
                    .cornerRadius(15)
                    .padding()
                }
        .padding()
            }
            
        }

struct FeaturedView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            VStack {
                Text("Featured")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    
                    .lineSpacing(20)
            }
            .padding(.leading,28)
                

   ZStack(alignment: .bottomLeading) {
                Image("Featureimage")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 360, height: 370)
                    .cornerRadius(20)
                    .overlay(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.black.opacity(0.3), Color.black.opacity(0.9)]),
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                VStack {
                    VStack(alignment: .leading, spacing: 15) {
                        Text("Meditation Series")
                            .font(.caption)
                            .foregroundColor(.blue)
                            .padding(.top,53)
                        
                        Text("Change your thought patterns")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        Spacer()
                        
                        Text("Ranveer Allahbadia")
                            .font(.subheadline)
                            .foregroundColor(.white)
                            .bold()
                         
                        Text("Break down your thought patterns and understand why you think the way you do to optimize your em...")
                            .font(.footnote)
                            .foregroundColor(.gray)
                            .lineLimit(2)
                        
                        HStack {
                            Text("10 Mins")
                                .font(.subheadline)
                                .foregroundColor(.white)
                                .padding(.horizontal, 12)
                                .padding(.vertical, 6)
                                .background(Color.white.opacity(0.2))
                                .cornerRadius(10)
                            
                            Spacer()
                            
                            // Play Button
                            Button(action: {
                                print("Play button tapped")
                            }) {
                                Image(systemName: "play.circle.fill")
                                    .foregroundColor(.white)
                                    .font(.largeTitle)
                            }
                        }
                        .padding(.top, 8)
                    }
                    .padding()
                    .padding(.vertical,10)
                }
                
            }
            .frame(width: 370, height:370)
            .cornerRadius(20)
        }
    }
}



struct MindfulHeaderView: View {
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
        .padding()
    }
}

struct CustomTabBarView: View {
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
            .background(Color.customBackground)
        }
    }
}

struct TabBarItem: View {
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
    HomeView()
}

