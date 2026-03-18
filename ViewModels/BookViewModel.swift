import Foundation
internal import Combine

@MainActor
class BookViewModel: ObservableObject {

    @Published var books: [Book] = []

    let api = BookAPIService()

    func searchBooks(query: String) async {

        do {
            books = try await api.searchBooks(query: query)
        } catch {
            print("API Error:", error)
        }

    }
}
