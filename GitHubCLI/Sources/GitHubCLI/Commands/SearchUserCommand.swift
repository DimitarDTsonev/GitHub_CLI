import Foundation

struct SearchUserCommand {
    static func execute(username: String) async {
        do {
            let user = try await GitHubAPI.shared.fetchUser(username: username)
            
            print("""
            👤 Username: \(user.login) | Name: \(user.name ?? "N/A")
            ⭐ Public Repositories: \(user.publicRepos)
            👥 Followers: \(user.followers) | Following: \(user.following)
            """)
        } catch {
            print("❌ Error: User not found or invalid request.")
        }
    }
}