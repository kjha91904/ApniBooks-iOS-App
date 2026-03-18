import Foundation

class BookAPIService {
    
    func searchBooks(query: String) async throws -> [Book] {
        
        let urlString = "https://www.googleapis.com/books/v1/volumes?q=\(query)"
        
        guard let url = URL(string: urlString) else {
            throw URLError(.badURL)
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        
        let response = try JSONDecoder().decode(BookResponse.self, from: data)
        
        return response.items ?? []
    }
}//
//  BookAPIService.swift
//  Book App
//
//  Created by Krishna on 16/03/26.
//

