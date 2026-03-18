import SwiftUI

struct ProfileView: View {
    
    var body: some View {
        
        VStack(spacing: 25) {
            
            // Header
            HStack {
                Text("Account")
                    .font(.title)
                    .fontWeight(.bold)
                
                Spacer()
                
                Text("Done")
                    .foregroundColor(.blue)
            }
            .padding(.horizontal)
            
            
            // Profile Card
            HStack(spacing: 15) {
                
                Image("profile")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    
                    Text("Krishna")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Text("john123@gmail.com")
                        .foregroundColor(.white.opacity(0.8))
                }
                
                Spacer()
            }
            .padding()
            .background(
                LinearGradient(colors: [.brown, .black],
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
            )
            .cornerRadius(20)
            .padding(.horizontal)
            
            
            // Options
            VStack(spacing: 15) {
                
                ProfileRow(icon: "arrow.triangle.2.circlepath", title: "Updates")
                
                ProfileRow(icon: "book.fill", title: "Books")
                
                ProfileRow(icon: "bell.fill", title: "Notification")
                
                ProfileRow(icon: "gearshape.fill", title: "View Account Settings")
                
                ProfileRow(icon: "arrow.backward.circle.fill", title: "Sign Out")
                
            }
            .padding(.horizontal)
            
            
            Spacer()
        }
        .padding(.top)
        .background(Color(.systemGray6))
    }
}


struct ProfileRow: View {
    
    var icon: String
    var title: String
    
    var body: some View {
        
        HStack {
            
            Image(systemName: icon)
                .foregroundColor(.white)
                .frame(width: 30)
            
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .foregroundColor(.white.opacity(0.7))
        }
        .padding()
        .background(Color.blue)
        .cornerRadius(15)
    }
}


#Preview {
    ProfileView()
}
