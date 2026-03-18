import SwiftUI

struct SplashView: View {
    
    @State private var isActive = false
    
    var body: some View {
        
        if isActive {
            LoginView()
        } else {
            VStack {
                Image(systemName: "book.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundColor(.blue)
                
                Text("Apni Books")
                    .font(.largeTitle)
                    .fontWeight(.bold)
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    isActive = true
                }
            }
        }
    }
}
