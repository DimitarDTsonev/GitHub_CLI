struct ListRepositoriesCommand {
    static func execute(username: String) async {
        do {
            let repos = try await GitHubAPI.shared.fetchRepositories(username: username)
            if repos.isEmpty {
                print("ℹ️ No repositories found for \(username).")
            } else {
                repos.forEach { print("\($0.name) - ⭐️ \($0.stargazersCount)") }
            }
        } catch {
            print("❌ Error fetching repositories: \(error.localizedDescription)")
        }
    }
}