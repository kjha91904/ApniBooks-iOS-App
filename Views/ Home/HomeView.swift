import SwiftUI

struct HomeView: View {
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading, spacing: 20) {
                
                // Header
                ZStack {
                    
                    Text("Apni Books")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    HStack {
                        Spacer()
                        
                        Image("profile")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                    }
                }
                .padding(.horizontal)
                .padding(.top)
                
                
                // Poetry Section
                Text("Poetry")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                    .padding(.horizontal)
                
                
                LazyVGrid(columns: columns, spacing: 20) {
                    
                    BookCardView(image: "book1",
                                 title: "Prisoner",
                                 author: "Arnod Miller")
                    
                    BookCardView(image: "book2",
                                 title: "The Words I Cannot Say",
                                 author: "Smith Brooks")
                }
                .padding(.horizontal)
                
                
                // Romance Section
                Text("Romance")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                    .padding(.horizontal)
                
                
                LazyVGrid(columns: columns, spacing: 20) {
                    
                    BookCardView(image: "book3",
                                 title: "Meet You",
                                 author: "Bill Silas")
                    
                    BookCardView(image: "book4",
                                 title: "Moonstruck",
                                 author: "Amber Love")
                }
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    HomeView()
}
