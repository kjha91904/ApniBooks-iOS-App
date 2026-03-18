struct Book: Identifiable, Codable {
    
    let id: String
    let volumeInfo: VolumeInfo
}

struct VolumeInfo: Codable {
    
    let title: String
    let authors: [String]?
    let description: String?
}

