import SwiftUI

struct BookCardView: View {
    
    var image: String
    var title: String
    var author: String
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 6) {
            
            Image(image)
                .resizable()
                .scaledToFill()
                .frame(width: 160, height: 120)   // image height fix
                .clipped()
                .cornerRadius(15)
            
            Text(title)
                .font(.headline)
                .foregroundColor(.blue)
                .lineLimit(1)
            
            Text("(\(author))")
                .font(.subheadline)
                .foregroundColor(.blue)
                .lineLimit(1)
            
            Text("Lorem Ipsum Dolor Sit Sit")
                .font(.caption)
                .foregroundColor(.gray)
                .lineLimit(1)
            
            HStack(spacing: 3) {
                ForEach(0..<5) { _ in
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                        .font(.caption)
                }
            }
        }
        .frame(width: 160)   // card width fix
        .padding()
        .background(.white)
        .cornerRadius(20)
        .shadow(color: .black.opacity(0.15), radius: 6, x: 0, y: 3)
    }
}
