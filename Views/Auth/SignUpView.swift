import SwiftUI

struct SignUpView: View {
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            Text("Sign Up")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            TextField("Name", text: .constant(""))
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
            
            TextField("Email", text: .constant(""))
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
            
            SecureField("Password", text: .constant(""))
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
            
            
            Button("Create Account") {
                
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            
        }
        .padding()
    }
}
