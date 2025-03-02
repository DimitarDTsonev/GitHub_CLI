import Foundation

struct ListRepositoriesCommand {
    static func execute(username: String, sorted: Bool = false) async {
        do {
            var repos = try await GitHubAPI.shared.fetchRepositories(username: username)

            if repos.isEmpty {
                print("ℹ️ No repositories found for \(username).")
                return
            }

            if sorted {
                repos.sort { $0.stargazersCount > $1.stargazersCount }
                print("📂 Repositories of \(username) sorted by stars:")
            } else {
                print("📂 Repositories of \(username):")
            }

            repos.forEach { print("⭐ \($0.stargazersCount) - \($0.name)") }
        } catch {
            print("❌ Error fetching repositories: \(error.localizedDescription)")
        }
    }
}