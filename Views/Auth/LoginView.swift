import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        
        NavigationStack {
            
            VStack(spacing: 20) {
                
                Image(systemName: "book.fill")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .foregroundColor(.blue)
                
                Text("Apni Books")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                TextField("Email", text: $email)
                    .textFieldStyle(.roundedBorder)
                
                SecureField("Password", text: $password)
                    .textFieldStyle(.roundedBorder)
                
                
                // Login Navigation
                NavigationLink(destination: MainTabView()) {
                    Text("Log In")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                
                // Sign Up Navigation
                HStack {
                    
                    Text("Are You A New Member?")
                    
                    NavigationLink("SIGN UP") {
                        SignUpView()
                    }
                    .foregroundColor(.blue)
                }
            }
            .padding()
        }
    }
}
