import SwiftUI

struct SearchView: View {
    
    @State private var searchText = ""
    
    let trendingBooks = [
        "Romantic Story",
        "Rich Dad Poor Dad",
        "Self Improvement Books",
        "Business Books",
        "My Mothers Rival",
        "Riptides",
        "Love Maybe",
        "Meet You"
    ]
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            // Header
            HStack {
                
                Image(systemName: "chevron.left")
                    .font(.title3)
                
                Spacer()
                
                Text("Search")
                    .font(.title2)
                    .fontWeight(.bold)
                
                Spacer()
            }
            .padding(.horizontal)
            
            
            // Search Bar
            HStack {
                
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                
                TextField("Search For Books", text: $searchText)
            }
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(15)
            .padding(.horizontal)
            
            
            // Trending Title
            Text("Trending")
                .font(.headline)
                .padding(.horizontal)
                .padding(.top)
            
            
            // Trending List
            ScrollView {
                
                VStack(spacing: 15) {
                    
                    ForEach(trendingBooks, id: \.self) { book in
                        
                        VStack {
                            
                            HStack {
                                
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(.gray)
                                
                                Text(book)
                                
                                Spacer()
                            }
                            
                            Divider()
                        }
                    }
                }
                .padding(.horizontal)
            }
            
            Spacer()
        }
    }
}

#Preview {
    SearchView()
}
