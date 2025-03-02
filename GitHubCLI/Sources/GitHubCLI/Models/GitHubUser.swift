import Foundation

struct GitHubUser: Codable {
    let login: String
    let name: String?
    let publicRepos: Int
    let followers: Int
    let following: Int

    private enum CodingKeys: String, CodingKey {
        case login, name, followers, following
        case publicRepos = "public_repos"
    }
}