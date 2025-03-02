import Foundation

struct GitHubRepository: Codable {
    let name: String
    let description: String?
    let stargazersCount: Int

    private enum CodingKeys: String, CodingKey {
        case name, description
        case stargazersCount = "stargazers_count"
    }
}